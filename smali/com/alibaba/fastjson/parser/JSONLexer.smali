.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, -0x1

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 39
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v1, v0

    :goto_0
    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_0

    move v1, v4

    goto :goto_1

    :cond_0
    move v1, v3

    .line 46
    :goto_1
    sput-boolean v1, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    .line 79
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    const/16 v1, 0x67

    new-array v1, v1, [I

    .line 1990
    sput-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    const/16 v1, 0x30

    move v2, v1

    :goto_2
    const/16 v5, 0x39

    if-gt v2, v5, :cond_1

    .line 1994
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v6, v2, -0x30

    aput v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/16 v2, 0x61

    move v6, v2

    :goto_3
    const/16 v7, 0x66

    if-gt v6, v7, :cond_2

    .line 1998
    sget-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v8, v6, -0x61

    add-int/lit8 v8, v8, 0xa

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    const/16 v6, 0x41

    move v7, v6

    :goto_4
    const/16 v8, 0x46

    if-gt v7, v8, :cond_3

    .line 2001
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v7, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    const-string v7, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 4763
    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    sput-object v7, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    const/16 v7, 0x100

    new-array v8, v7, [I

    .line 4764
    sput-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    .line 4766
    invoke-static {v8, v0}, Ljava/util/Arrays;->fill([II)V

    .line 4767
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    array-length v0, v0

    move v8, v3

    :goto_5
    if-ge v8, v0, :cond_4

    .line 4768
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v10, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v10, v10, v8

    aput v8, v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 4770
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v8, 0x3d

    aput v3, v0, v8

    new-array v0, v7, [Z

    .line 4829
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    move v0, v3

    .line 4831
    :goto_6
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v9, v8

    const/16 v10, 0x7a

    const/16 v11, 0x5f

    const/16 v12, 0x5a

    if-ge v0, v9, :cond_8

    if-lt v0, v6, :cond_5

    if-gt v0, v12, :cond_5

    .line 4833
    aput-boolean v4, v8, v0

    goto :goto_7

    :cond_5
    if-lt v0, v2, :cond_6

    if-gt v0, v10, :cond_6

    .line 4835
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v4, v8, v0

    goto :goto_7

    :cond_6
    if-ne v0, v11, :cond_7

    .line 4837
    sget-object v8, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v4, v8, v0

    :cond_7
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_6

    :cond_8
    new-array v0, v7, [Z

    .line 4842
    sput-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    .line 4845
    :goto_8
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v7, v0

    if-ge v3, v7, :cond_d

    if-lt v3, v6, :cond_9

    if-gt v3, v12, :cond_9

    .line 4847
    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_9
    if-lt v3, v2, :cond_a

    if-gt v3, v10, :cond_a

    .line 4849
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_a
    if-ne v3, v11, :cond_b

    .line 4851
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v4, v0, v3

    goto :goto_9

    :cond_b
    if-lt v3, v1, :cond_c

    if-gt v3, v5, :cond_c

    .line 4853
    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v4, v0, v3

    :cond_c
    :goto_9
    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    goto :goto_8

    :cond_d
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 90
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 64
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    .line 74
    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 77
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 102
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [C

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v2, :cond_0

    const/16 v2, 0x200

    new-array v2, v2, [C

    .line 105
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 108
    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 110
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v2, -0x1

    .line 112
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 116
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    if-lt v2, p1, :cond_1

    const/16 p1, 0x1a

    goto :goto_0

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v2, 0xfeff

    if-ne p1, v2, :cond_2

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 125
    :cond_2
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const-string v1, ""

    :cond_3
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 128
    sget-object p1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_4

    move v0, v3

    :cond_4
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 94
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 98
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 4

    const/16 v0, 0x31

    const/4 v1, 0x0

    if-lt p0, v0, :cond_d

    const/16 v2, 0x33

    if-le p0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    const/16 p1, 0x32

    if-ne p4, p0, :cond_5

    if-lt p5, v0, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v1

    :cond_5
    if-ne p4, v0, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v0, :cond_6

    if-eq p5, p1, :cond_6

    return v1

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v0, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v1

    :cond_8
    if-eq p6, v0, :cond_b

    if-ne p6, p1, :cond_9

    goto :goto_0

    :cond_9
    if-ne p6, v2, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v0, :cond_c

    :cond_a
    return v1

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v1
.end method

.method static checkTime(CCCCCC)Z
    .locals 4

    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p0, v3, :cond_3

    if-lt p1, v2, :cond_2

    if-le p1, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p0, v3, :cond_b

    if-lt p1, v2, :cond_b

    const/16 p0, 0x34

    if-le p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/16 p0, 0x35

    const/16 p1, 0x36

    if-lt p2, v2, :cond_6

    if-gt p2, p0, :cond_6

    if-lt p3, v2, :cond_5

    if-le p3, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p2, p1, :cond_b

    if-eq p3, v2, :cond_7

    return v1

    :cond_7
    if-lt p4, v2, :cond_9

    if-gt p4, p0, :cond_9

    if-lt p5, v2, :cond_8

    if-le p5, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p4, p1, :cond_b

    if-eq p5, v2, :cond_a

    return v1

    :cond_a
    const/4 p0, 0x1

    return p0

    :cond_b
    :goto_0
    return v1
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p0, v0, [B

    return-object p0

    :cond_0
    add-int v1, p1, p2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ge p1, v1, :cond_1

    .line 4782
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v1, :cond_2

    .line 4786
    sget-object v3, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v3, v3, v4

    if-gez v3, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 4790
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_4

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_2

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    sub-int v4, v1, p1

    add-int/2addr v4, v2

    const/16 v5, 0x4c

    if-le p2, v5, :cond_6

    .line 4792
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0xd

    if-ne p2, v5, :cond_5

    div-int/lit8 p2, v4, 0x4e

    goto :goto_3

    :cond_5
    move p2, v0

    :goto_3
    shl-int/2addr p2, v2

    goto :goto_4

    :cond_6
    move p2, v0

    :goto_4
    sub-int/2addr v4, p2

    mul-int/lit8 v4, v4, 0x6

    shr-int/lit8 v4, v4, 0x3

    sub-int/2addr v4, v3

    .line 4795
    new-array v5, v4, [B

    .line 4799
    div-int/lit8 v6, v4, 0x3

    mul-int/lit8 v6, v6, 0x3

    move v7, v0

    move v8, v7

    :goto_5
    if-ge v7, v6, :cond_8

    .line 4801
    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v9, p1

    shl-int/lit8 p1, p1, 0x12

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0xc

    or-int/2addr p1, v9

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v10, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v9, v9, v11

    shl-int/lit8 v9, v9, 0x6

    or-int/2addr p1, v9

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v11, v10, 0x1

    .line 4802
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    aget v9, v9, v10

    or-int/2addr p1, v9

    add-int/lit8 v9, v7, 0x1

    shr-int/lit8 v10, p1, 0x10

    int-to-byte v10, v10

    .line 4805
    aput-byte v10, v5, v7

    add-int/lit8 v7, v9, 0x1

    shr-int/lit8 v10, p1, 0x8

    int-to-byte v10, v10

    .line 4806
    aput-byte v10, v5, v9

    add-int/lit8 v9, v7, 0x1

    int-to-byte p1, p1

    .line 4807
    aput-byte p1, v5, v7

    if-lez p2, :cond_7

    add-int/lit8 v8, v8, 0x1

    const/16 p1, 0x13

    if-ne v8, p1, :cond_7

    add-int/lit8 v11, v11, 0x2

    move v8, v0

    :cond_7
    move p1, v11

    move v7, v9

    goto :goto_5

    :cond_8
    if-ge v7, v4, :cond_a

    move p2, v0

    :goto_6
    sub-int v6, v1, v3

    if-gt p1, v6, :cond_9

    .line 4820
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    aget p1, v6, p1

    mul-int/lit8 v6, p2, 0x6

    rsub-int/lit8 v6, v6, 0x12

    shl-int/2addr p1, v6

    or-int/2addr v0, p1

    add-int/2addr p2, v2

    move p1, v8

    goto :goto_6

    :cond_9
    const/16 p0, 0x10

    :goto_7
    if-ge v7, v4, :cond_a

    add-int/lit8 p1, v7, 0x1

    shr-int p2, v0, p0

    int-to-byte p2, p2

    .line 4823
    aput-byte p2, v5, v7

    add-int/lit8 p0, p0, -0x8

    move v7, p1

    goto :goto_7

    :cond_a
    return-object v5
.end method

.method private matchFieldHash(J)I
    .locals 16

    move-object/from16 v0, p0

    .line 2106
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    const/16 v4, 0x22

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/16 v9, 0x9

    const/16 v10, 0xd

    const/16 v11, 0xa

    const/16 v13, 0x20

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x27

    if-ne v1, v4, :cond_9

    :goto_1
    const-wide v14, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 2131
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    :goto_2
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v4, v12, :cond_2

    .line 2132
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v12, v1, :cond_1

    .line 2135
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v1

    sub-int/2addr v4, v3

    add-int/2addr v3, v4

    goto :goto_3

    :cond_1
    int-to-long v5, v12

    xor-long/2addr v5, v14

    const-wide v14, 0x100000001b3L

    mul-long/2addr v14, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    .line 2144
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2145
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    .line 2149
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    .line 2150
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2152
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_5

    add-int/2addr v3, v2

    return v3

    :cond_5
    if-gt v1, v13, :cond_8

    if-eq v1, v13, :cond_6

    if-eq v1, v11, :cond_6

    if-eq v1, v10, :cond_6

    if-eq v1, v9, :cond_6

    const/16 v4, 0xc

    if-eq v1, v4, :cond_6

    const/16 v4, 0x8

    if-ne v1, v4, :cond_8

    .line 2166
    :cond_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    .line 2167
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_7

    const/16 v1, 0x1a

    goto :goto_5

    :cond_7
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2169
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_5
    move v3, v4

    goto :goto_4

    .line 2173
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    if-eq v1, v13, :cond_b

    if-eq v1, v11, :cond_b

    if-eq v1, v10, :cond_b

    if-eq v1, v9, :cond_b

    const/16 v4, 0xc

    if-eq v1, v4, :cond_b

    const/16 v4, 0x8

    if-ne v1, v4, :cond_a

    goto :goto_6

    :cond_a
    const-wide/16 v1, 0x0

    .line 2124
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2125
    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v7

    .line 2119
    :cond_b
    :goto_6
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v1, v3

    .line 2120
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_c

    const/16 v1, 0x1a

    goto :goto_7

    :cond_c
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2122
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_7
    move v3, v4

    goto/16 :goto_0
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 12

    .line 825
    new-array v0, p1, [C

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p1, :cond_9

    .line 828
    aget-char v4, p0, v2

    const/16 v5, 0x5c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_0

    add-int/lit8 v5, v3, 0x1

    .line 831
    aput-char v4, v0, v3

    move v3, v5

    goto/16 :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 834
    aget-char v4, p0, v2

    const/16 v7, 0x22

    if-eq v4, v7, :cond_8

    const/16 v7, 0x27

    if-eq v4, v7, :cond_7

    const/16 v7, 0x46

    if-eq v4, v7, :cond_6

    if-eq v4, v5, :cond_5

    const/16 v5, 0x62

    if-eq v4, v5, :cond_4

    const/16 v5, 0x66

    if-eq v4, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_3

    const/16 v5, 0x72

    if-eq v4, v5, :cond_2

    const/16 v5, 0x78

    const/16 v7, 0x10

    if-eq v4, v5, :cond_1

    const/4 v5, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    .line 903
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p1, "unclosed.str.lit"

    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xb

    .line 871
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_1
    add-int/lit8 v4, v3, 0x1

    .line 896
    new-instance v10, Ljava/lang/String;

    new-array v5, v5, [C

    add-int/lit8 v2, v2, 0x1

    aget-char v11, p0, v2

    aput-char v11, v5, v1

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v6

    add-int/2addr v2, v6

    aget-char v11, p0, v2

    aput-char v11, v5, v9

    add-int/2addr v2, v6

    aget-char v9, p0, v2

    aput-char v9, v5, v8

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([C)V

    invoke-static {v10, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x9

    .line 865
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_3
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x7

    .line 859
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_4
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x6

    .line 856
    aput-char v5, v0, v3

    goto/16 :goto_1

    :pswitch_5
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x5

    .line 853
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_6
    add-int/lit8 v4, v3, 0x1

    .line 850
    aput-char v5, v0, v3

    goto :goto_1

    :pswitch_7
    add-int/lit8 v4, v3, 0x1

    .line 847
    aput-char v8, v0, v3

    goto :goto_1

    :pswitch_8
    add-int/lit8 v4, v3, 0x1

    .line 844
    aput-char v9, v0, v3

    goto :goto_1

    :pswitch_9
    add-int/lit8 v4, v3, 0x1

    .line 841
    aput-char v6, v0, v3

    goto :goto_1

    :pswitch_a
    add-int/lit8 v4, v3, 0x1

    .line 838
    aput-char v1, v0, v3

    goto :goto_1

    :pswitch_b
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x2f

    .line 887
    aput-char v5, v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 893
    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v2, v2, 0x1

    aget-char v8, p0, v2

    aget v8, v5, v8

    mul-int/2addr v8, v7

    add-int/2addr v2, v6

    aget-char v7, p0, v2

    aget v5, v5, v7

    add-int/2addr v8, v5

    int-to-char v5, v8

    aput-char v5, v0, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xd

    .line 878
    aput-char v5, v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xa

    .line 868
    aput-char v5, v0, v3

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0x8

    .line 862
    aput-char v5, v0, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v3, 0x1

    .line 890
    aput-char v5, v0, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v3, 0x1

    const/16 v5, 0xc

    .line 875
    aput-char v5, v0, v3

    goto :goto_1

    :cond_7
    add-int/lit8 v4, v3, 0x1

    .line 884
    aput-char v7, v0, v3

    goto :goto_1

    :cond_8
    add-int/lit8 v4, v3, 0x1

    .line 881
    aput-char v7, v0, v3

    :goto_1
    move v3, v4

    :goto_2
    add-int/2addr v2, v6

    goto/16 :goto_0

    .line 906
    :cond_9
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x74
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private scanIdent()V
    .locals 2

    .line 1183
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v0, 0x0

    .line 1184
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    .line 1187
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1190
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1194
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    .line 1197
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "true"

    .line 1198
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x6

    .line 1199
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_2
    const-string v1, "false"

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x7

    .line 1201
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_3
    const-string v1, "new"

    .line 1202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x9

    .line 1203
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "undefined"

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v0, 0x17

    .line 1205
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    const-string v1, "Set"

    .line 1206
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x15

    .line 1207
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    const-string v1, "TreeSet"

    .line 1208
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x16

    .line 1209
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_7
    const/16 v0, 0x12

    .line 1211
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_1
    return-void
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 2

    .line 4708
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    add-int/lit8 p1, p1, -0x30

    mul-int/lit16 p1, p1, 0x3e8

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0x64

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/2addr p1, p3

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p1, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    const/4 p2, 0x1

    sub-int/2addr p5, p2

    add-int/lit8 p7, p7, -0x30

    mul-int/lit8 p7, p7, 0xa

    add-int/lit8 p8, p8, -0x30

    add-int/2addr p7, p8

    .line 4712
    invoke-virtual {v0, p2, p1}, Ljava/util/Calendar;->set(II)V

    .line 4713
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    .line 4714
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p7}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 4

    .line 1225
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1226
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v3, p1, p2

    invoke-virtual {v1, p1, v3, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1227
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {p1, v0, v2, p2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 1229
    :cond_0
    new-array v0, p2, [C

    .line 1230
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1231
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1

    .line 216
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    return p1
.end method

.method public close()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/16 v2, 0x2004

    if-gt v1, v2, :cond_0

    .line 137
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 151
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    .line 153
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    .line 156
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_2

    if-eqz p2, :cond_1

    const-string p1, ""

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 157
    :goto_1
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    .line 161
    :cond_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object p2, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget p2, p2, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 8

    .line 1873
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 1874
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1876
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    .line 1879
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    const/16 v3, 0x44

    if-ne v0, v3, :cond_2

    .line 1883
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 1887
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 1889
    :cond_3
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    .line 1890
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 1892
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v4, 0x4c

    if-eq p1, v4, :cond_4

    const/16 v4, 0x53

    if-eq p1, v4, :cond_4

    const/16 v4, 0x42

    if-eq p1, v4, :cond_4

    if-eq p1, v2, :cond_4

    if-ne p1, v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 1904
    :cond_5
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1906
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v2, v2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_6

    .line 1907
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v4, p1, v0

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v2, p1, v4, v5, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1908
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_1

    .line 1910
    :cond_6
    new-array v2, v0, [C

    .line 1911
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, p1, v0

    invoke-virtual {v4, p1, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    move-object p1, v2

    :goto_1
    const/16 v2, 0x9

    if-gt v0, v2, :cond_d

    .line 1914
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    if-nez v2, :cond_d

    .line 1918
    aget-char v2, p1, v3

    const/16 v4, 0x2d

    const/4 v5, 0x2

    if-ne v2, v4, :cond_7

    .line 1922
    aget-char v2, p1, v1

    move v4, v1

    goto :goto_3

    :cond_7
    const/16 v4, 0x2b

    if-ne v2, v4, :cond_8

    .line 1925
    aget-char v2, p1, v1

    goto :goto_2

    :cond_8
    move v5, v1

    :goto_2
    move v4, v3

    :goto_3
    add-int/lit8 v2, v2, -0x30

    :goto_4
    if-ge v5, v0, :cond_b

    .line 1934
    aget-char v6, p1, v5

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_9

    move v3, v1

    goto :goto_5

    :cond_9
    add-int/lit8 v6, v6, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v6

    if-eqz v3, :cond_a

    mul-int/lit8 v3, v3, 0xa

    :cond_a
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    int-to-double v0, v2

    int-to-double v2, v3

    div-double/2addr v0, v2

    if-eqz v4, :cond_c

    neg-double v0, v0

    .line 1953
    :cond_c
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1955
    :cond_d
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, v3, v0}, Ljava/lang/String;-><init>([CII)V

    .line 1957
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 1960
    :goto_6
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 6

    .line 1965
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 1966
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1968
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 1979
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1980
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 1981
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v1

    invoke-virtual {v3, v0, v5, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1982
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v0, v2, v4, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    return-object v0

    .line 1984
    :cond_2
    new-array v2, v1, [C

    .line 1985
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr v1, v0

    invoke-virtual {v3, v0, v1, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 1986
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>([C)V

    return-object v0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/high16 v2, 0x10000

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v3, 0x0

    .line 914
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final intValue()I
    .locals 10

    .line 1119
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 1123
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt v0, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1125
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x2d

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    const/high16 v2, -0x80000000

    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    const v2, -0x7fffffff

    move v4, v5

    :goto_1
    if-ge v0, v1, :cond_3

    add-int/lit8 v5, v0, 0x1

    .line 1136
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v7, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1138
    invoke-virtual {v7, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    move v9, v5

    move v5, v0

    move v0, v9

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_9

    add-int/lit8 v7, v0, 0x1

    .line 1147
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1149
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    const/16 v8, 0x4c

    if-eq v0, v8, :cond_8

    const/16 v8, 0x53

    if-eq v0, v8, :cond_8

    const/16 v8, 0x42

    if-ne v0, v8, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x30

    const v8, -0xccccccc

    if-lt v5, v8, :cond_7

    mul-int/lit8 v5, v5, 0xa

    add-int v8, v2, v0

    if-lt v5, v8, :cond_6

    sub-int/2addr v5, v0

    move v0, v7

    goto :goto_3

    .line 1162
    :cond_6
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1158
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_5
    move v0, v7

    :cond_9
    if-eqz v4, :cond_b

    .line 1168
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v6

    if-le v0, v1, :cond_a

    return v5

    .line 1171
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    neg-int v0, v5

    return v0
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 606
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v1

    add-int/lit8 v3, v2, -0x1

    .line 613
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 615
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    const/16 v4, 0x53

    const/16 v6, 0x4c

    const/16 v7, 0x42

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v4, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, -0x1

    move v3, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    move v3, v7

    .line 634
    :goto_1
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v9, :cond_4

    const/16 v8, 0x1a

    goto :goto_2

    :cond_4
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 636
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    :goto_2
    const/16 v9, 0x2d

    const/4 v10, 0x1

    if-ne v8, v9, :cond_5

    const-wide/high16 v8, -0x8000000000000000L

    add-int/lit8 v1, v1, 0x1

    move v11, v10

    goto :goto_3

    :cond_5
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v11, 0x0

    :goto_3
    if-ge v1, v2, :cond_7

    add-int/lit8 v12, v1, 0x1

    .line 646
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v13, :cond_6

    const/16 v1, 0x1a

    goto :goto_4

    :cond_6
    iget-object v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 648
    invoke-virtual {v13, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    add-int/lit8 v1, v1, -0x30

    neg-int v1, v1

    int-to-long v13, v1

    move v1, v12

    goto :goto_5

    :cond_7
    const-wide/16 v13, 0x0

    :goto_5
    if-ge v1, v2, :cond_b

    add-int/lit8 v12, v1, 0x1

    .line 655
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v15, :cond_8

    const/16 v1, 0x1a

    goto :goto_6

    :cond_8
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 657
    invoke-virtual {v15, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    add-int/lit8 v1, v1, -0x30

    const-wide v15, -0xcccccccccccccccL

    cmp-long v15, v13, v15

    if-gez v15, :cond_9

    .line 660
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_9
    const-wide/16 v15, 0xa

    mul-long/2addr v13, v15

    int-to-long v4, v1

    add-long v17, v8, v4

    cmp-long v1, v13, v17

    if-gez v1, :cond_a

    .line 664
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_a
    sub-long/2addr v13, v4

    move v1, v12

    const/16 v4, 0x53

    goto :goto_5

    :cond_b
    if-eqz v11, :cond_10

    .line 670
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v10

    if-le v1, v2, :cond_f

    const-wide/32 v1, -0x80000000

    cmp-long v1, v13, v1

    if-ltz v1, :cond_e

    if-eq v3, v6, :cond_e

    const/16 v1, 0x53

    if-ne v3, v1, :cond_c

    long-to-int v1, v13

    int-to-short v1, v1

    .line 673
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_c
    if-ne v3, v7, :cond_d

    long-to-int v1, v13

    int-to-byte v1, v1

    .line 677
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_d
    long-to-int v1, v13

    .line 680
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 682
    :cond_e
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1

    .line 684
    :cond_f
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    neg-long v1, v13

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_13

    if-eq v3, v6, :cond_13

    const/16 v4, 0x53

    if-ne v3, v4, :cond_11

    long-to-int v1, v1

    int-to-short v1, v1

    .line 690
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    return-object v1

    :cond_11
    if-ne v3, v7, :cond_12

    long-to-int v1, v1

    int-to-byte v1, v1

    .line 692
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    return-object v1

    :cond_12
    long-to-int v1, v1

    .line 694
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    .line 697
    :cond_13
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method public final isBlankInput()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1248
    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x1a

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    return v4

    :cond_0
    const/16 v3, 0x20

    if-gt v2, v3, :cond_1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v0

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1

    .line 165
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget p1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final longValue()J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 1816
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v0

    .line 1821
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_0

    const-wide/high16 v4, -0x8000000000000000L

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 1829
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    neg-int v0, v0

    int-to-long v7, v0

    :goto_1
    move v0, v6

    goto :goto_2

    :cond_1
    const-wide/16 v7, 0x0

    :goto_2
    if-ge v0, v1, :cond_7

    add-int/lit8 v6, v0, 0x1

    .line 1838
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v9, :cond_2

    const/16 v0, 0x1a

    goto :goto_3

    :cond_2
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1840
    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_6

    const/16 v9, 0x53

    if-eq v0, v9, :cond_6

    const/16 v9, 0x42

    if-ne v0, v9, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x30

    const-wide v9, -0xcccccccccccccccL

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    const-wide/16 v9, 0xa

    mul-long/2addr v7, v9

    int-to-long v9, v0

    add-long v11, v4, v9

    cmp-long v0, v7, v11

    if-ltz v0, :cond_4

    sub-long/2addr v7, v9

    goto :goto_1

    .line 1855
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1851
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_4
    move v0, v6

    :cond_7
    if-eqz v2, :cond_9

    .line 1861
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v3

    if-le v0, v1, :cond_8

    return-wide v7

    .line 1864
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    neg-long v0, v7

    return-wide v0
.end method

.method public matchField(J)Z
    .locals 17

    move-object/from16 v0, p0

    .line 2007
    iget-char v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2008
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    move v4, v3

    :goto_0
    const/16 v5, 0x22

    const/16 v9, 0xa

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/16 v12, 0xc

    const/16 v13, 0x20

    if-ne v1, v5, :cond_0

    goto :goto_1

    :cond_0
    const/16 v5, 0x27

    if-ne v1, v5, :cond_f

    :goto_1
    const-wide v15, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v5, v2

    move-wide v14, v15

    .line 2033
    :goto_2
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v6, :cond_2

    .line 2034
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_1

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    goto :goto_3

    :cond_1
    int-to-long v7, v6

    xor-long v6, v14, v7

    const-wide v14, 0x100000001b3L

    mul-long/2addr v14, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    cmp-long v1, v14, p1

    if-eqz v1, :cond_3

    .line 2046
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2047
    iput-wide v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    return v10

    .line 2051
    :cond_3
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v4, 0x1

    add-int/2addr v1, v4

    .line 2052
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_4

    const/16 v1, 0x1a

    goto :goto_4

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2054
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_4
    const/16 v4, 0x3a

    if-ne v1, v4, :cond_b

    .line 2057
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    .line 2058
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2060
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    const/16 v4, 0x7b

    if-ne v2, v4, :cond_7

    add-int/2addr v1, v3

    .line 2082
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2083
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_6

    const/16 v14, 0x1a

    goto :goto_6

    :cond_6
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2085
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_6
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2086
    iput v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    :cond_7
    const/16 v4, 0x5b

    if-ne v2, v4, :cond_9

    add-int/2addr v1, v3

    .line 2088
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2089
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_8

    const/16 v14, 0x1a

    goto :goto_7

    :cond_8
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2091
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_7
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xe

    .line 2092
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_9

    .line 2094
    :cond_9
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2095
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_a

    const/16 v14, 0x1a

    goto :goto_8

    :cond_a
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2097
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v14

    :goto_8
    iput-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2098
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    :goto_9
    return v3

    :cond_b
    if-gt v1, v13, :cond_e

    if-eq v1, v13, :cond_c

    if-eq v1, v9, :cond_c

    const/16 v4, 0xd

    if-eq v1, v4, :cond_c

    const/16 v4, 0x9

    if-eq v1, v4, :cond_c

    if-eq v1, v12, :cond_c

    const/16 v4, 0x8

    if-ne v1, v4, :cond_e

    .line 2071
    :cond_c
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v2, 0x1

    add-int/2addr v1, v2

    .line 2072
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v2, :cond_d

    const/16 v1, 0x1a

    goto :goto_a

    :cond_d
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2074
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_a
    move v2, v4

    goto/16 :goto_4

    .line 2078
    :cond_e
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "match feild error expect \':\'"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    if-gt v1, v13, :cond_12

    if-eq v1, v13, :cond_10

    if-eq v1, v9, :cond_10

    const/16 v5, 0xd

    if-eq v1, v5, :cond_10

    const/16 v5, 0x9

    if-eq v1, v5, :cond_10

    if-eq v1, v12, :cond_10

    const/16 v5, 0x8

    if-ne v1, v5, :cond_12

    .line 2021
    :cond_10
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int/2addr v1, v4

    .line 2022
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    const/16 v1, 0x1a

    goto :goto_b

    :cond_11
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2024
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_b
    move v4, v5

    goto/16 :goto_0

    :cond_12
    const-wide/16 v1, 0x0

    .line 2026
    iput-wide v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    .line 2027
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v10
.end method

.method public next()C
    .locals 2

    .line 143
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 144
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v0, 0x1a

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v0
.end method

.method public final nextIdent()V
    .locals 2

    .line 582
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-gt v0, v1, :cond_1

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    .line 595
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_3

    .line 596
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 599
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 597
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    :goto_3
    return-void

    .line 592
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final nextToken()V
    .locals 15

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 225
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 227
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_0
    const/16 v2, 0x22

    if-ne v1, v2, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_1
    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    const/16 v2, 0x39

    if-le v1, v2, :cond_3

    .line 237
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_4

    .line 238
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    :cond_4
    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v0, 0x10

    .line 244
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_5
    const/16 v3, 0xc

    if-eq v1, v3, :cond_20

    const/16 v4, 0xd

    if-eq v1, v4, :cond_20

    const/16 v5, 0x20

    if-eq v1, v5, :cond_20

    const/16 v6, 0x3a

    if-eq v1, v6, :cond_1f

    const/16 v7, 0x5b

    const/4 v8, 0x1

    const/16 v9, 0x1a

    if-eq v1, v7, :cond_1d

    const/16 v7, 0x5d

    if-eq v1, v7, :cond_1c

    const/16 v10, 0x66

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/16 v13, 0xa

    const/16 v14, 0x7d

    if-eq v1, v10, :cond_19

    const/16 v10, 0x6e

    if-eq v1, v10, :cond_14

    const/16 v10, 0x7b

    if-eq v1, v10, :cond_12

    if-eq v1, v14, :cond_10

    const/16 v10, 0x53

    if-eq v1, v10, :cond_f

    const/16 v10, 0x54

    if-eq v1, v10, :cond_f

    const/16 v10, 0x74

    if-eq v1, v10, :cond_c

    const/16 v2, 0x75

    if-eq v1, v2, :cond_f

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 388
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v2, v3, :cond_7

    if-ne v1, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6

    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    :goto_1
    move v1, v8

    :goto_2
    if-eqz v1, :cond_9

    .line 390
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_8

    .line 394
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 395
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto :goto_3

    .line 391
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "EOF error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x1f

    if-le v1, v2, :cond_b

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_a

    goto :goto_4

    .line 401
    :cond_a
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 402
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_3
    return-void

    .line 398
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    .line 346
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v0, 0xb

    .line 347
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 342
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 343
    iput v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 250
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    .line 262
    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string/jumbo v8, "true"

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 263
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 264
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v5, :cond_d

    if-eq v0, v2, :cond_d

    if-eq v0, v14, :cond_d

    if-eq v0, v7, :cond_d

    if-eq v0, v13, :cond_d

    if-eq v0, v4, :cond_d

    if-eq v0, v11, :cond_d

    if-eq v0, v9, :cond_d

    if-eq v0, v3, :cond_d

    if-eq v0, v12, :cond_d

    if-ne v0, v6, :cond_e

    :cond_d
    const/4 v0, 0x6

    .line 277
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 281
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan true error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_f
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    return-void

    .line 376
    :cond_10
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 377
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_11

    goto :goto_5

    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 379
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 381
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 366
    :cond_12
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 367
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_13

    goto :goto_6

    :cond_13
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 371
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 314
    :cond_14
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v8, "null"

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 315
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v0, v12

    goto :goto_7

    .line 317
    :cond_15
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v8, "new"

    invoke-virtual {v1, v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 318
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move v0, v11

    :cond_16
    :goto_7
    if-eqz v0, :cond_18

    .line 323
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v5, :cond_17

    if-eq v1, v2, :cond_17

    if-eq v1, v14, :cond_17

    if-eq v1, v7, :cond_17

    if-eq v1, v13, :cond_17

    if-eq v1, v4, :cond_17

    if-eq v1, v11, :cond_17

    if-eq v1, v9, :cond_17

    if-eq v1, v3, :cond_17

    if-ne v1, v12, :cond_18

    .line 334
    :cond_17
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 339
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan null/new error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v8, "false"

    invoke-virtual {v0, v8, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 291
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 292
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v5, :cond_1a

    if-eq v0, v2, :cond_1a

    if-eq v0, v14, :cond_1a

    if-eq v0, v7, :cond_1a

    if-eq v0, v13, :cond_1a

    if-eq v0, v4, :cond_1a

    if-eq v0, v11, :cond_1a

    if-eq v0, v9, :cond_1a

    if-eq v0, v3, :cond_1a

    if-eq v0, v12, :cond_1a

    if-ne v0, v6, :cond_1b

    :cond_1a
    const/4 v0, 0x7

    .line 305
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 309
    :cond_1b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "scan false error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_1c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v0, 0xf

    .line 361
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 352
    :cond_1d
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v8

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 353
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_1e

    goto :goto_8

    :cond_1e
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_8
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v0, 0xe

    .line 357
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 384
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v0, 0x11

    .line 385
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 258
    :cond_20
    :pswitch_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextToken(I)V
    .locals 10

    const/4 v0, 0x0

    .line 412
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    const/4 v0, 0x2

    const/16 v1, 0xd

    const/16 v2, 0x39

    const/16 v3, 0x22

    const/16 v4, 0x30

    const/16 v5, 0xe

    const/16 v6, 0x5b

    const/16 v7, 0x7b

    const/16 v8, 0xc

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    const/16 v9, 0x1a

    if-eq p1, v0, :cond_d

    if-eq p1, v8, :cond_9

    const/16 v0, 0x12

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v2, 0xf

    const/16 v3, 0x5d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_7

    .line 441
    :pswitch_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    const/16 p1, 0x10

    .line 442
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 445
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 446
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 448
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_1
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_1
    const/16 v5, 0x7d

    if-ne v4, v5, :cond_3

    .line 454
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 457
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 458
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_2
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_3
    if-ne v4, v3, :cond_5

    .line 466
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 469
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 470
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_3
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_5
    if-ne v4, v9, :cond_15

    .line 478
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 547
    :pswitch_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_7

    .line 548
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 534
    :pswitch_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v6, :cond_6

    .line 535
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 536
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_6
    if-ne v0, v7, :cond_15

    .line 541
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 542
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 553
    :cond_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v9, :cond_15

    .line 554
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 559
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    return-void

    .line 417
    :cond_9
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_b

    .line 418
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 421
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 422
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_4
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    :cond_b
    if-ne v0, v6, :cond_15

    .line 429
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 432
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 433
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_c

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_5
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 509
    :cond_d
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_e

    .line 510
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 511
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_e
    if-lt v0, v4, :cond_f

    if-gt v0, v2, :cond_f

    .line 516
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    .line 521
    :cond_f
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v7, :cond_15

    .line 522
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 525
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 526
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 528
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    :goto_6
    iput-char v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-void

    .line 483
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v4, :cond_12

    if-gt v0, v2, :cond_12

    .line 484
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 485
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    return-void

    .line 489
    :cond_12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_13

    .line 490
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    return-void

    :cond_13
    if-ne v0, v6, :cond_14

    .line 496
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_14
    if-ne v0, v7, :cond_15

    .line 502
    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 503
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    .line 565
    :cond_15
    :goto_7
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v0, v2, :cond_17

    const/16 v2, 0xa

    if-eq v0, v2, :cond_17

    if-eq v0, v1, :cond_17

    const/16 v1, 0x9

    if-eq v0, v1, :cond_17

    if-eq v0, v8, :cond_17

    const/16 v1, 0x8

    if-ne v0, v1, :cond_16

    goto :goto_8

    .line 575
    :cond_16
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    .line 571
    :cond_17
    :goto_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 3

    const/4 v0, 0x0

    .line 169
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 172
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, p1, :cond_1

    .line 175
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 176
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 p1, 0x1a

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_1
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 180
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_1
    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 194
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not match "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public final numberString()Ljava/lang/String;
    .locals 3

    .line 199
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 200
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 202
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v2, 0x4c

    if-eq v0, v2, :cond_0

    const/16 v2, 0x53

    if-eq v0, v2, :cond_0

    const/16 v2, 0x42

    if-eq v0, v2, :cond_0

    const/16 v2, 0x46

    if-eq v0, v2, :cond_0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 212
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public scanBoolean()Z
    .locals 5

    .line 1428
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string v2, "false"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    move v1, v2

    move v2, v0

    goto :goto_0

    .line 1434
    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v0, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    .line 1445
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1446
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v1

    :cond_3
    const/4 v0, -0x1

    .line 1441
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1
.end method

.method public scanFieldBoolean(J)Z
    .locals 12

    const/4 v0, 0x0

    .line 2882
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2884
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2890
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, p1

    const-string v2, "false"

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz p2, :cond_1

    add-int/lit8 p1, p1, 0x5

    :goto_0
    move p2, v0

    goto/16 :goto_2

    .line 2893
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string/jumbo v6, "true"

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    add-int/2addr p1, v1

    :goto_1
    move p2, v4

    goto :goto_2

    .line 2896
    :cond_2
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"false\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_3

    add-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 2899
    :cond_3
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"true\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x6

    goto :goto_1

    .line 2902
    :cond_4
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x31

    if-ne p2, v5, :cond_5

    add-int/2addr p1, v4

    goto :goto_1

    .line 2905
    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    invoke-virtual {p2, v5}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v5, 0x30

    if-ne p2, v5, :cond_6

    add-int/2addr p1, v4

    goto :goto_0

    .line 2908
    :cond_6
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"1\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_7

    add-int/2addr p1, v3

    goto :goto_1

    .line 2911
    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, p1

    const-string v6, "\"0\""

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_16

    add-int/2addr p1, v3

    goto :goto_0

    .line 2920
    :goto_2
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, p1, 0x1

    add-int/2addr v5, p1

    .line 2921
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v7, 0x1a

    if-lt v5, p1, :cond_8

    move p1, v7

    goto :goto_3

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2923
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v5, 0x10

    const/16 v8, 0x2c

    if-ne p1, v8, :cond_a

    .line 2927
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v4

    add-int/2addr p1, v6

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 2930
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2931
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_9

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2933
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_4
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2935
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2936
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return p2

    :cond_a
    const/16 v9, 0xd

    const/16 v10, 0x7d

    if-eq p1, v10, :cond_d

    const/16 v11, 0x20

    if-eq p1, v11, :cond_b

    const/16 v11, 0xa

    if-eq p1, v11, :cond_b

    if-eq p1, v9, :cond_b

    const/16 v11, 0x9

    if-eq p1, v11, :cond_b

    const/16 v11, 0xc

    if-eq p1, v11, :cond_b

    const/16 v11, 0x8

    if-ne p1, v11, :cond_d

    .line 2946
    :cond_b
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr p1, v6

    .line 2947
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v6, :cond_c

    move p1, v7

    goto :goto_5

    :cond_c
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2949
    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    move v6, v5

    goto :goto_3

    :cond_d
    if-ne p1, v10, :cond_15

    .line 2956
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr p1, v6

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v8, :cond_f

    .line 2958
    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2959
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 2962
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2963
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_e

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2965
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_6
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_f
    const/16 v5, 0x5d

    if-ne p1, v5, :cond_11

    const/16 p1, 0xf

    .line 2968
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2969
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 2972
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2973
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_10

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2975
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_11
    if-ne p1, v10, :cond_13

    .line 2978
    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2979
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v4

    .line 2982
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2983
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_12

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2985
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_13
    if-ne p1, v7, :cond_14

    const/16 p1, 0x14

    .line 2988
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2989
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v4

    add-int/2addr p1, v3

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2990
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2995
    :goto_9
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return p2

    .line 2992
    :cond_14
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2997
    :cond_15
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2915
    :cond_16
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 13

    const/4 v0, 0x0

    .line 2726
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2728
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 2733
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2734
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v1

    .line 2740
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v5, 0x1a

    if-lt p1, v4, :cond_1

    move p1, v5

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2742
    invoke-virtual {v4, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 v4, 0x22

    const/4 v6, -0x1

    if-ne p1, v4, :cond_5

    .line 2751
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, p1, v3

    add-int/lit8 v8, v3, 0x1

    add-int/2addr p1, v3

    .line 2754
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2756
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    .line 2760
    :goto_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v8

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-eq p1, v6, :cond_4

    sub-int/2addr p1, v7

    .line 2765
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2766
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2767
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    add-int/2addr v8, p1

    add-int/lit8 p1, v8, 0x1

    add-int/2addr v8, v1

    .line 2775
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 2776
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    goto/16 :goto_6

    .line 2769
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2770
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2762
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo p2, "unclosed str"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const/16 v0, 0x30

    if-lt p1, v0, :cond_16

    const/16 v7, 0x39

    if-gt p1, v7, :cond_16

    sub-int/2addr p1, v0

    int-to-long v8, p1

    .line 2783
    :goto_2
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v3, 0x1

    add-int/2addr p1, v3

    .line 2784
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_6

    move p1, v5

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2786
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    if-lt p1, v0, :cond_7

    if-gt p1, v7, :cond_7

    const-wide/16 v11, 0xa

    mul-long/2addr v8, v11

    add-int/lit8 p1, p1, -0x30

    int-to-long v11, p1

    add-long/2addr v8, v11

    move v3, v10

    goto :goto_2

    :cond_7
    const/16 v0, 0x2e

    if-ne p1, v0, :cond_8

    .line 2791
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    :cond_8
    if-ne p1, v4, :cond_a

    .line 2794
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v10, 0x1

    add-int/2addr p1, v10

    .line 2795
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v3, :cond_9

    move p1, v5

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2797
    invoke-virtual {v3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    move v3, p1

    move p1, v0

    goto :goto_5

    :cond_a
    move v3, p1

    move p1, v10

    :goto_5
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-gez v0, :cond_b

    .line 2804
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2808
    :cond_b
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_6
    const/16 v4, 0x10

    const/16 v7, 0x2c

    if-ne v3, v7, :cond_d

    .line 2815
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, 0x1

    .line 2818
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2819
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, p1, :cond_c

    goto :goto_7

    :cond_c
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2821
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_7
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 2823
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2824
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v0

    :cond_d
    const/16 v8, 0x7d

    if-ne v3, v8, :cond_15

    .line 2829
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, p1, 0x1

    add-int/2addr v3, p1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result p1

    if-ne p1, v7, :cond_f

    .line 2831
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2832
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 2835
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2836
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_e

    goto :goto_8

    :cond_e
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2838
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_f
    const/16 v3, 0x5d

    if-ne p1, v3, :cond_11

    const/16 p1, 0xf

    .line 2841
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2842
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 2845
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2846
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_10

    goto :goto_9

    :cond_10
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2848
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_9
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_11
    if-ne p1, v8, :cond_13

    const/16 p1, 0xd

    .line 2851
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2852
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 2855
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2856
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_12

    goto :goto_a

    :cond_12
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2858
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_a
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_13
    if-ne p1, v5, :cond_14

    const/16 p1, 0x14

    .line 2861
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2862
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v9, -0x1

    add-int/2addr p1, v9

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2863
    iput-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 p1, 0x4

    .line 2870
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v0

    .line 2865
    :cond_14
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2866
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2867
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2872
    :cond_15
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2873
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 2874
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2

    .line 2810
    :cond_16
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object p2
.end method

.method public final scanFieldDouble(J)D
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3564
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3566
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 3571
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3573
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v6

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    const/16 v8, 0x2d

    if-ne v2, v8, :cond_1

    move v9, v7

    goto :goto_0

    :cond_1
    move v9, v1

    :goto_0
    if-eqz v9, :cond_2

    .line 3576
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v2, v6

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v6, v10

    :cond_2
    const/4 v10, -0x1

    const/16 v11, 0x30

    if-lt v2, v11, :cond_15

    const/16 v12, 0x39

    if-gt v2, v12, :cond_15

    sub-int/2addr v2, v11

    .line 3583
    :goto_1
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v6, 0x1

    add-int/2addr v13, v6

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_3

    if-gt v6, v12, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v6, v6, -0x30

    add-int/2addr v2, v6

    move v6, v14

    goto :goto_1

    :cond_3
    const/16 v13, 0x2e

    if-ne v6, v13, :cond_4

    move v13, v7

    goto :goto_2

    :cond_4
    move v13, v1

    :goto_2
    const/16 v15, 0xa

    if-eqz v13, :cond_7

    .line 3595
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-lt v6, v11, :cond_6

    if-gt v6, v12, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v6, v11

    add-int/2addr v2, v6

    move v6, v15

    .line 3600
    :goto_3
    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v13, 0x1

    add-int/2addr v14, v13

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    if-lt v13, v11, :cond_5

    if-gt v13, v12, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v13, v13, -0x30

    add-int/2addr v2, v13

    mul-int/lit8 v6, v6, 0xa

    move/from16 v13, v16

    goto :goto_3

    :cond_5
    move/from16 v14, v16

    move/from16 v17, v13

    move v13, v6

    move/from16 v6, v17

    goto :goto_4

    .line 3610
    :cond_6
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_7
    move v13, v7

    :goto_4
    const/16 v1, 0x65

    if-eq v6, v1, :cond_9

    const/16 v1, 0x45

    if-ne v6, v1, :cond_8

    goto :goto_5

    :cond_8
    const/4 v1, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v7

    :goto_6
    if-eqz v1, :cond_c

    .line 3617
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v14, 0x2b

    if-eq v6, v14, :cond_b

    if-ne v6, v8, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v14, v16

    goto :goto_9

    .line 3619
    :cond_b
    :goto_7
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v16, 0x1

    add-int v6, v6, v16

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    :goto_8
    move v14, v8

    :goto_9
    if-lt v6, v11, :cond_c

    if-gt v6, v12, :cond_c

    .line 3623
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    goto :goto_8

    .line 3630
    :cond_c
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v14

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    if-nez v1, :cond_d

    if-ge v8, v15, :cond_d

    int-to-double v1, v2

    int-to-double v11, v13

    div-double/2addr v1, v11

    if-eqz v9, :cond_e

    neg-double v1, v1

    goto :goto_a

    .line 3637
    :cond_d
    invoke-direct {v0, v5, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3638
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    :cond_e
    :goto_a
    const/16 v5, 0x10

    const/16 v8, 0x2c

    if-ne v6, v8, :cond_f

    .line 3646
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v14, v7

    add-int/2addr v3, v14

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3647
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 3648
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3649
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-wide v1

    :cond_f
    const/16 v9, 0x7d

    if-ne v6, v9, :cond_14

    .line 3654
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v14, 0x1

    add-int/2addr v6, v14

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_10

    .line 3656
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3657
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v7

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3658
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_10
    const/16 v5, 0x5d

    if-ne v6, v5, :cond_11

    const/16 v3, 0xf

    .line 3660
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3661
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v7

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3662
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_11
    if-ne v6, v9, :cond_12

    const/16 v3, 0xd

    .line 3664
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3665
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v7

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3666
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_b

    :cond_12
    const/16 v5, 0x1a

    if-ne v6, v5, :cond_13

    .line 3668
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v11, v7

    add-int/2addr v3, v11

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 3669
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3670
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v3, 0x4

    .line 3675
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v1

    .line 3672
    :cond_13
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 3677
    :cond_14
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 3641
    :cond_15
    iput v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3685
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3687
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3691
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3692
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3694
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3696
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 3700
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 3701
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3703
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [D

    move v9, v1

    .line 3709
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    const/16 v12, 0x2d

    if-ne v2, v12, :cond_4

    move v13, v11

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v13, :cond_6

    .line 3714
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v2, v4

    .line 3715
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_5

    const/16 v2, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3717
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v4, v14

    :cond_6
    const/16 v14, 0x30

    if-lt v2, v14, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 3724
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 3725
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3727
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v14, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    move v6, v11

    goto :goto_7

    :cond_9
    move v6, v1

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 3740
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 3741
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3743
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v14, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move v1, v5

    .line 3749
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 3750
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3752
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v14, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 3763
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    move v1, v11

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v6, v11

    :goto_c
    if-eqz v6, :cond_16

    .line 3771
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 3772
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3774
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v12, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 3777
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 3778
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v12, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3780
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v14, :cond_16

    if-gt v4, v15, :cond_16

    .line 3785
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 3786
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v12, :cond_15

    goto :goto_f

    :cond_15
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3788
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 3795
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v10

    sub-int/2addr v3, v11

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-double v2, v2

    int-to-double v5, v1

    div-double/2addr v2, v5

    if-eqz v13, :cond_18

    neg-double v2, v2

    goto :goto_12

    .line 3804
    :cond_17
    invoke-direct {v0, v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3805
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 3808
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v5, 0x3

    if-lt v9, v1, :cond_19

    .line 3809
    array-length v1, v8

    mul-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v6, 0x0

    .line 3810
    invoke-static {v8, v6, v1, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v6, v9, 0x1

    .line 3813
    aput-wide v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 3817
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 3818
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3820
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 3823
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 3824
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_1c

    const/16 v3, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3826
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 3836
    :goto_14
    array-length v9, v8

    if-eq v6, v9, :cond_1d

    .line 3837
    new-array v9, v6, [D

    const/4 v10, 0x0

    .line 3838
    invoke-static {v8, v10, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v3, v1, :cond_1e

    .line 3843
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v11

    add-int/2addr v1, v4

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3844
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3845
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 3846
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v5, 0x7d

    if-ne v3, v5, :cond_24

    .line 3852
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v3, v4

    .line 3853
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v4, :cond_1f

    const/16 v3, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3855
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_15
    if-ne v3, v1, :cond_20

    const/16 v1, 0x10

    .line 3857
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3858
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v11

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3859
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v3, v2, :cond_21

    const/16 v1, 0xf

    .line 3861
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3862
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v11

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3863
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v3, v5, :cond_22

    const/16 v1, 0xd

    .line 3865
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3866
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v11

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3867
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v3, v2, :cond_23

    .line 3869
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v11

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3870
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3871
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 3876
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 3873
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 3878
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v5, v1

    move v2, v4

    move v9, v6

    move v1, v10

    move/from16 v4, v16

    goto/16 :goto_2

    .line 3830
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 21

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3886
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3888
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3890
    check-cast v3, [[D

    return-object v3

    .line 3892
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3893
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3895
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3898
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3899
    check-cast v3, [[D

    return-object v3

    .line 3902
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 3903
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3905
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[D

    move v10, v1

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 3913
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 3914
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3916
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [D

    move v12, v1

    .line 3922
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/16 v15, 0x2d

    if-ne v2, v15, :cond_5

    move/from16 v16, v14

    goto :goto_5

    :cond_5
    move/from16 v16, v1

    :goto_5
    if-eqz v16, :cond_7

    .line 3926
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v2, v11

    .line 3927
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v11, :cond_6

    const/16 v2, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3929
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_6
    move/from16 v11, v17

    :cond_7
    const/16 v4, 0x30

    if-lt v2, v4, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 3936
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v11, 0x1

    add-int/2addr v5, v11

    .line 3937
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3939
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v4, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v18

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 3952
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v18, 0x1

    add-int v5, v5, v18

    .line 3953
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3955
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v4, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3962
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v11, 0x1

    add-int/2addr v5, v11

    .line 3963
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3965
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v4, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v18

    goto :goto_a

    .line 3976
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3977
    check-cast v3, [[D

    return-object v3

    :cond_d
    move v1, v14

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    move v11, v14

    :goto_d
    if-eqz v11, :cond_16

    .line 3984
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v19, v18, 0x1

    add-int v5, v5, v18

    .line 3985
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3987
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v15, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v18, v19

    goto :goto_12

    .line 3990
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v19, 0x1

    add-int v3, v3, v19

    .line 3991
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v15, :cond_14

    :goto_10
    const/16 v3, 0x1a

    goto :goto_11

    :cond_14
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3993
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    move/from16 v18, v5

    move v5, v3

    :goto_12
    if-lt v5, v4, :cond_16

    if-gt v5, v6, :cond_16

    .line 3998
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v18, 0x1

    add-int v3, v3, v18

    .line 3999
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v15, :cond_15

    goto :goto_10

    :cond_15
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4001
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_11

    .line 4008
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v18

    sub-int/2addr v3, v13

    sub-int/2addr v3, v14

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-double v2, v2

    int-to-double v14, v1

    div-double/2addr v2, v14

    if-eqz v16, :cond_18

    neg-double v2, v2

    goto :goto_13

    .line 4016
    :cond_17
    invoke-direct {v0, v13, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 4017
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 4020
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v6, 0x3

    if-lt v12, v1, :cond_19

    .line 4021
    array-length v1, v8

    mul-int/2addr v1, v6

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [D

    const/4 v11, 0x0

    .line 4022
    invoke-static {v8, v11, v1, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 4025
    aput-wide v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 4029
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v18, 0x1

    add-int v2, v2, v18

    .line 4030
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4032
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move v11, v3

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v3, 0x5d

    if-ne v5, v3, :cond_2a

    .line 4035
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v18, 0x1

    add-int v5, v5, v18

    .line 4036
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v12, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4038
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4048
    :goto_15
    array-length v12, v8

    if-eq v1, v12, :cond_1d

    .line 4049
    new-array v12, v1, [D

    const/4 v13, 0x0

    .line 4050
    invoke-static {v8, v13, v12, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v12

    goto :goto_16

    :cond_1d
    const/4 v13, 0x0

    .line 4054
    :goto_16
    array-length v12, v9

    if-lt v10, v12, :cond_1e

    .line 4055
    array-length v9, v9

    mul-int/2addr v9, v6

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[D

    .line 4056
    invoke-static {v8, v13, v9, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 4059
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 4063
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v11, 0x1

    add-int/2addr v2, v11

    .line 4064
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4066
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v3, :cond_29

    .line 4069
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v11, 0x1

    add-int/2addr v5, v11

    .line 4070
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v10, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4072
    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4079
    :goto_18
    array-length v10, v9

    if-eq v1, v10, :cond_22

    .line 4080
    new-array v10, v1, [[D

    const/4 v12, 0x0

    .line 4081
    invoke-static {v9, v12, v10, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v10

    :cond_22
    if-ne v5, v2, :cond_23

    .line 4086
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v8, v2

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4087
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 4088
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v6, 0x10

    .line 4089
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v6, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 4094
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 4096
    iput v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4097
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    sub-int/2addr v10, v2

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4098
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    const/4 v2, 0x1

    if-ne v5, v3, :cond_25

    const/16 v1, 0xf

    .line 4100
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4101
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v2

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4102
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 4104
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4105
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v2

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4106
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v3, 0x1a

    if-ne v5, v3, :cond_27

    .line 4108
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v2

    add-int/2addr v1, v10

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 4109
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4110
    iput-char v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 4115
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 4112
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    .line 4113
    move-object v3, v4

    check-cast v3, [[D

    return-object v3

    :cond_28
    const/4 v4, 0x0

    .line 4117
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4118
    move-object v3, v4

    check-cast v3, [[D

    return-object v3

    :cond_29
    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v12, 0x0

    move v2, v5

    move v8, v11

    :goto_1a
    move v10, v1

    move-object v3, v4

    move v5, v6

    move v1, v12

    goto :goto_1c

    :cond_2a
    const/16 v3, 0x1a

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/4 v12, 0x0

    move v2, v5

    move/from16 v11, v18

    :goto_1b
    move-object v3, v4

    move v5, v6

    const/16 v4, 0x5b

    move/from16 v20, v12

    move v12, v1

    move/from16 v1, v20

    goto/16 :goto_4

    :cond_2b
    move-object v4, v3

    .line 4042
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4043
    move-object v3, v4

    check-cast v3, [[D

    return-object v3

    :cond_2c
    move-object v4, v3

    const/16 v3, 0x1a

    move-object v3, v4

    :goto_1c
    const/16 v4, 0x5b

    goto/16 :goto_2
.end method

.method public final scanFieldFloat(J)F
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3005
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3007
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3012
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 3014
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    const/16 v7, 0x2d

    if-ne v2, v7, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    if-eqz v8, :cond_2

    .line 3017
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, 0x1

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v5, v9

    :cond_2
    const/4 v9, -0x1

    const/16 v10, 0x30

    if-lt v2, v10, :cond_15

    const/16 v11, 0x39

    if-gt v2, v11, :cond_15

    sub-int/2addr v2, v10

    .line 3024
    :goto_1
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_3

    if-gt v5, v11, :cond_3

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move v5, v13

    goto :goto_1

    :cond_3
    const/16 v12, 0x2e

    if-ne v5, v12, :cond_4

    move v12, v6

    goto :goto_2

    :cond_4
    move v12, v1

    :goto_2
    const/16 v14, 0xa

    if-eqz v12, :cond_7

    .line 3036
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v12, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-lt v5, v10, :cond_6

    if-gt v5, v11, :cond_6

    mul-int/lit8 v2, v2, 0xa

    sub-int/2addr v5, v10

    add-int/2addr v2, v5

    move v5, v14

    .line 3039
    :goto_3
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v12, 0x1

    add-int/2addr v13, v12

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    if-lt v12, v10, :cond_5

    if-gt v12, v11, :cond_5

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v12, v12, -0x30

    add-int/2addr v2, v12

    mul-int/lit8 v5, v5, 0xa

    move v12, v15

    goto :goto_3

    :cond_5
    move v13, v15

    move/from16 v16, v12

    move v12, v5

    move/from16 v5, v16

    goto :goto_4

    .line 3049
    :cond_6
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    :cond_7
    move v12, v6

    :goto_4
    const/16 v15, 0x65

    if-eq v5, v15, :cond_8

    const/16 v15, 0x45

    if-ne v5, v15, :cond_9

    :cond_8
    move v1, v6

    :cond_9
    if-eqz v1, :cond_c

    .line 3056
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    const/16 v13, 0x2b

    if-eq v5, v13, :cond_b

    if-ne v5, v7, :cond_a

    goto :goto_5

    :cond_a
    move v13, v15

    goto :goto_7

    .line 3058
    :cond_b
    :goto_5
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v15, 0x1

    add-int/2addr v5, v15

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    :goto_6
    move v13, v7

    :goto_7
    if-lt v5, v10, :cond_c

    if-gt v5, v11, :cond_c

    .line 3062
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    goto :goto_6

    .line 3069
    :cond_c
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v13

    sub-int/2addr v7, v4

    sub-int/2addr v7, v6

    if-nez v1, :cond_d

    if-ge v7, v14, :cond_d

    int-to-float v1, v2

    int-to-float v2, v12

    div-float/2addr v1, v2

    if-eqz v8, :cond_e

    neg-float v1, v1

    goto :goto_8

    .line 3076
    :cond_d
    invoke-direct {v0, v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3077
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    :cond_e
    :goto_8
    const/16 v2, 0x10

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_f

    .line 3085
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v6

    add-int/2addr v3, v13

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3086
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v3, 0x3

    .line 3087
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3088
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v1

    :cond_f
    const/16 v7, 0x7d

    if-ne v5, v7, :cond_14

    .line 3093
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v13, 0x1

    add-int/2addr v5, v13

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v4, :cond_10

    .line 3095
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3096
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v6

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3097
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    const/16 v2, 0x5d

    if-ne v5, v2, :cond_11

    const/16 v2, 0xf

    .line 3099
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3100
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v6

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3101
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_11
    if-ne v5, v7, :cond_12

    const/16 v2, 0xd

    .line 3103
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3104
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v6

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3105
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_12
    const/16 v2, 0x1a

    if-ne v5, v2, :cond_13

    .line 3107
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v6

    add-int/2addr v3, v8

    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v3, 0x14

    .line 3108
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3109
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v2, 0x4

    .line 3114
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v1

    .line 3111
    :cond_13
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 3116
    :cond_14
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3

    .line 3080
    :cond_15
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v3
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3124
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3126
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 3130
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3131
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3133
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3135
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 3139
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 3140
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3142
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [F

    move v9, v1

    .line 3148
    :goto_2
    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    const/16 v12, 0x2d

    if-ne v2, v12, :cond_4

    move v13, v11

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    if-eqz v13, :cond_6

    .line 3153
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v2, v4

    .line 3154
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_5

    const/16 v2, 0x1a

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3156
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v4, v14

    :cond_6
    const/16 v14, 0x30

    if-lt v2, v14, :cond_26

    const/16 v15, 0x39

    if-gt v2, v15, :cond_26

    add-int/lit8 v2, v2, -0x30

    .line 3163
    :goto_5
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v6, v4

    .line 3164
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v6, v4, :cond_7

    const/16 v4, 0x1a

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3166
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_6
    if-lt v4, v14, :cond_8

    if-gt v4, v15, :cond_8

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_5

    :cond_8
    const/16 v6, 0x2e

    if-ne v4, v6, :cond_9

    move v6, v11

    goto :goto_7

    :cond_9
    move v6, v1

    :goto_7
    const/16 v5, 0xa

    if-eqz v6, :cond_d

    .line 3179
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 3180
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_8

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3182
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_8
    if-lt v1, v14, :cond_c

    if-gt v1, v15, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    move v1, v5

    .line 3188
    :goto_9
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v6, 0x1

    add-int/2addr v4, v6

    .line 3189
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3191
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    if-lt v4, v14, :cond_e

    if-gt v4, v15, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    mul-int/lit8 v1, v1, 0xa

    move/from16 v6, v16

    goto :goto_9

    .line 3202
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_d
    move v1, v11

    :cond_e
    const/16 v6, 0x65

    if-eq v4, v6, :cond_10

    const/16 v6, 0x45

    if-ne v4, v6, :cond_f

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_c

    :cond_10
    :goto_b
    move v6, v11

    :goto_c
    if-eqz v6, :cond_16

    .line 3210
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v16, 0x1

    add-int v4, v4, v16

    .line 3211
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_d

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3213
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_d
    const/16 v4, 0x2b

    if-eq v3, v4, :cond_13

    if-ne v3, v12, :cond_12

    goto :goto_e

    :cond_12
    move v4, v3

    move/from16 v16, v17

    goto :goto_11

    .line 3216
    :cond_13
    :goto_e
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v17, 0x1

    add-int v3, v3, v17

    .line 3217
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v12, :cond_14

    :goto_f
    const/16 v3, 0x1a

    goto :goto_10

    :cond_14
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3219
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_10
    move/from16 v16, v4

    move v4, v3

    :goto_11
    if-lt v4, v14, :cond_16

    if-gt v4, v15, :cond_16

    .line 3224
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v3, v3, v16

    .line 3225
    iget v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v12, :cond_15

    goto :goto_f

    :cond_15
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3227
    invoke-virtual {v12, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_10

    .line 3234
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v16

    sub-int/2addr v3, v10

    sub-int/2addr v3, v11

    if-nez v6, :cond_17

    if-ge v3, v5, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v13, :cond_18

    neg-float v2, v2

    goto :goto_12

    .line 3243
    :cond_17
    invoke-direct {v0, v10, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3244
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3247
    :cond_18
    :goto_12
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v9, v1, :cond_19

    .line 3248
    array-length v1, v8

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    .line 3249
    invoke-static {v8, v5, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v5, v9, 0x1

    .line 3252
    aput v2, v8, v9

    const/16 v1, 0x2c

    if-ne v4, v1, :cond_1b

    .line 3256
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v16, 0x1

    add-int v1, v1, v16

    .line 3257
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v3, :cond_1a

    const/16 v1, 0x1a

    goto :goto_13

    :cond_1a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3259
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_13
    move v4, v1

    move/from16 v16, v2

    goto/16 :goto_17

    :cond_1b
    const/16 v2, 0x5d

    if-ne v4, v2, :cond_25

    .line 3262
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v16, 0x1

    add-int v4, v4, v16

    .line 3263
    iget v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_1c

    const/16 v4, 0x1a

    goto :goto_14

    :cond_1c
    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3265
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3275
    :goto_14
    array-length v9, v8

    if-eq v5, v9, :cond_1d

    .line 3276
    new-array v9, v5, [F

    const/4 v10, 0x0

    .line 3277
    invoke-static {v8, v10, v9, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_1d
    if-ne v4, v1, :cond_1e

    .line 3282
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v11

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3283
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3284
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v1, 0x10

    .line 3285
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_1e
    const/16 v3, 0x7d

    if-ne v4, v3, :cond_24

    .line 3291
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v4, v6

    .line 3292
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v6, :cond_1f

    const/16 v4, 0x1a

    goto :goto_15

    :cond_1f
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3294
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_15
    if-ne v4, v1, :cond_20

    const/16 v1, 0x10

    .line 3296
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3297
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v11

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3298
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_20
    if-ne v4, v2, :cond_21

    const/16 v1, 0xf

    .line 3300
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3301
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v11

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3302
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_21
    if-ne v4, v3, :cond_22

    const/16 v1, 0xd

    .line 3304
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3305
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v11

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_22
    const/16 v2, 0x1a

    if-ne v4, v2, :cond_23

    .line 3308
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v5, v11

    add-int/2addr v1, v5

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3309
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3310
    iput-char v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_16
    const/4 v1, 0x4

    .line 3315
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    .line 3312
    :cond_23
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    return-object v3

    :cond_24
    const/4 v3, 0x0

    .line 3317
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    :cond_25
    :goto_17
    const/16 v1, 0x10

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v10, 0x0

    move v2, v4

    move v9, v5

    move/from16 v4, v16

    move v5, v1

    move v1, v10

    goto/16 :goto_2

    .line 3269
    :cond_26
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 3325
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3327
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 3329
    check-cast v3, [[F

    return-object v3

    .line 3331
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 3332
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3334
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 3337
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3338
    check-cast v3, [[F

    return-object v3

    .line 3341
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v5, 0x1

    add-int/2addr v2, v5

    .line 3342
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    const/16 v2, 0x1a

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3344
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v9, v5, [[F

    move v10, v1

    :goto_2
    if-ne v2, v4, :cond_2c

    .line 3352
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v8, 0x1

    add-int/2addr v2, v8

    .line 3353
    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_4

    const/16 v2, 0x1a

    goto :goto_3

    :cond_4
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3355
    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    new-array v8, v5, [F

    move v12, v1

    .line 3361
    :goto_4
    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v11

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    const/16 v15, 0x2d

    if-ne v2, v15, :cond_5

    move/from16 v16, v14

    goto :goto_5

    :cond_5
    move/from16 v16, v1

    :goto_5
    if-eqz v16, :cond_7

    .line 3365
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v17, v11, 0x1

    add-int/2addr v2, v11

    .line 3366
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v11, :cond_6

    const/16 v2, 0x1a

    goto :goto_6

    :cond_6
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3368
    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_6
    move/from16 v11, v17

    :cond_7
    const/16 v4, 0x30

    if-lt v2, v4, :cond_2b

    const/16 v6, 0x39

    if-gt v2, v6, :cond_2b

    add-int/lit8 v2, v2, -0x30

    .line 3375
    :goto_7
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v11, 0x1

    add-int/2addr v5, v11

    .line 3376
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_8

    const/16 v5, 0x1a

    goto :goto_8

    :cond_8
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3378
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_8
    if-lt v5, v4, :cond_9

    if-gt v5, v6, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    move/from16 v11, v18

    goto :goto_7

    :cond_9
    const/16 v11, 0x2e

    if-ne v5, v11, :cond_d

    .line 3391
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v18, 0x1

    add-int v5, v5, v18

    .line 3392
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v1, :cond_a

    const/16 v1, 0x1a

    goto :goto_9

    :cond_a
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3394
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_9
    if-lt v1, v4, :cond_c

    if-gt v1, v6, :cond_c

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    const/16 v1, 0xa

    .line 3401
    :goto_a
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v18, v11, 0x1

    add-int/2addr v5, v11

    .line 3402
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_b

    const/16 v5, 0x1a

    goto :goto_b

    :cond_b
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3404
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_b
    if-lt v5, v4, :cond_e

    if-gt v5, v6, :cond_e

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v2, v5

    mul-int/lit8 v1, v1, 0xa

    move/from16 v11, v18

    goto :goto_a

    .line 3415
    :cond_c
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3416
    check-cast v3, [[F

    return-object v3

    :cond_d
    move v1, v14

    :cond_e
    const/16 v11, 0x65

    if-eq v5, v11, :cond_10

    const/16 v11, 0x45

    if-ne v5, v11, :cond_f

    goto :goto_c

    :cond_f
    const/4 v11, 0x0

    goto :goto_d

    :cond_10
    :goto_c
    move v11, v14

    :goto_d
    if-eqz v11, :cond_16

    .line 3423
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v19, v18, 0x1

    add-int v5, v5, v18

    .line 3424
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v3, :cond_11

    const/16 v3, 0x1a

    goto :goto_e

    :cond_11
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3426
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_e
    const/16 v5, 0x2b

    if-eq v3, v5, :cond_13

    if-ne v3, v15, :cond_12

    goto :goto_f

    :cond_12
    move v5, v3

    move/from16 v18, v19

    goto :goto_12

    .line 3429
    :cond_13
    :goto_f
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v19, 0x1

    add-int v3, v3, v19

    .line 3430
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v15, :cond_14

    :goto_10
    const/16 v3, 0x1a

    goto :goto_11

    :cond_14
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3432
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_11
    move/from16 v18, v5

    move v5, v3

    :goto_12
    if-lt v5, v4, :cond_16

    if-gt v5, v6, :cond_16

    .line 3437
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v18, 0x1

    add-int v3, v3, v18

    .line 3438
    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v15, :cond_15

    goto :goto_10

    :cond_15
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3440
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_11

    .line 3447
    :cond_16
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v3, v3, v18

    sub-int/2addr v3, v13

    sub-int/2addr v3, v14

    if-nez v11, :cond_17

    const/16 v4, 0xa

    if-ge v3, v4, :cond_17

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    if-eqz v16, :cond_18

    neg-float v2, v2

    goto :goto_13

    .line 3455
    :cond_17
    invoke-direct {v0, v13, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v1

    .line 3456
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 3459
    :cond_18
    :goto_13
    array-length v1, v8

    const/4 v3, 0x3

    if-lt v12, v1, :cond_19

    .line 3460
    array-length v1, v8

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [F

    const/4 v4, 0x0

    .line 3461
    invoke-static {v8, v4, v1, v4, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v1

    :cond_19
    add-int/lit8 v1, v12, 0x1

    .line 3464
    aput v2, v8, v12

    const/16 v2, 0x2c

    if-ne v5, v2, :cond_1b

    .line 3468
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v18, 0x1

    add-int v2, v2, v18

    .line 3469
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1a

    const/16 v2, 0x1a

    goto :goto_14

    :cond_1a
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3471
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_14
    move/from16 v18, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1b

    :cond_1b
    const/16 v4, 0x5d

    if-ne v5, v4, :cond_2a

    .line 3474
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v18, 0x1

    add-int v5, v5, v18

    .line 3475
    iget v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v11, :cond_1c

    const/16 v5, 0x1a

    goto :goto_15

    :cond_1c
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3477
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3487
    :goto_15
    array-length v11, v8

    if-eq v1, v11, :cond_1d

    .line 3488
    new-array v11, v1, [F

    const/4 v12, 0x0

    .line 3489
    invoke-static {v8, v12, v11, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v11

    goto :goto_16

    :cond_1d
    const/4 v12, 0x0

    .line 3493
    :goto_16
    array-length v11, v9

    if-lt v10, v11, :cond_1e

    .line 3494
    array-length v9, v9

    mul-int/2addr v9, v3

    div-int/lit8 v9, v9, 0x2

    new-array v9, v9, [[F

    .line 3495
    invoke-static {v8, v12, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e
    add-int/lit8 v1, v10, 0x1

    .line 3498
    aput-object v8, v9, v10

    if-ne v5, v2, :cond_20

    .line 3502
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v6, 0x1

    add-int/2addr v2, v6

    .line 3503
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_1f

    const/16 v2, 0x1a

    goto :goto_17

    :cond_1f
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3505
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_17
    move v8, v3

    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_1a

    :cond_20
    if-ne v5, v4, :cond_29

    .line 3508
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v6, 0x1

    add-int/2addr v5, v6

    .line 3509
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v6, :cond_21

    const/16 v5, 0x1a

    goto :goto_18

    :cond_21
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 3511
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 3518
    :goto_18
    array-length v6, v9

    if-eq v1, v6, :cond_22

    .line 3519
    new-array v6, v1, [[F

    const/4 v11, 0x0

    .line 3520
    invoke-static {v9, v11, v6, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v9, v6

    :cond_22
    if-ne v5, v2, :cond_23

    .line 3525
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v8, v14

    add-int/2addr v1, v8

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3526
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 3527
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v3, 0x10

    .line 3528
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v9

    :cond_23
    const/16 v3, 0x10

    const/16 v1, 0x7d

    if-ne v5, v1, :cond_28

    .line 3533
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    add-int/2addr v5, v8

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    if-ne v5, v2, :cond_24

    .line 3535
    iput v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3536
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v14

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3537
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_24
    if-ne v5, v4, :cond_25

    const/16 v1, 0xf

    .line 3539
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3540
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v14

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3541
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_25
    if-ne v5, v1, :cond_26

    const/16 v1, 0xd

    .line 3543
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3544
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v14

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 3545
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_19

    :cond_26
    const/16 v4, 0x1a

    if-ne v5, v4, :cond_27

    .line 3547
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v6, v14

    add-int/2addr v1, v6

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 3548
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 3549
    iput-char v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_19
    const/4 v1, 0x4

    .line 3554
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v9

    .line 3551
    :cond_27
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v12, 0x0

    .line 3552
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_28
    const/4 v12, 0x0

    .line 3556
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3557
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_29
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    move v8, v6

    :goto_1a
    move v10, v1

    move v5, v3

    move v1, v11

    move-object v3, v12

    const/16 v4, 0x5b

    goto/16 :goto_2

    :cond_2a
    const/16 v3, 0x10

    const/16 v4, 0x1a

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v2, v5

    :goto_1b
    move v5, v3

    move-object v3, v12

    const/16 v4, 0x5b

    move v12, v1

    move v1, v11

    move/from16 v11, v18

    goto/16 :goto_4

    :cond_2b
    move-object v12, v3

    .line 3481
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 3482
    move-object v3, v12

    check-cast v3, [[F

    return-object v3

    :cond_2c
    move-object v12, v3

    goto/16 :goto_2
.end method

.method public scanFieldInt(J)I
    .locals 11

    const/4 v0, 0x0

    .line 2180
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2182
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    return v0

    .line 2188
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 2189
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v2, 0x1a

    if-lt p2, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2191
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v3, 0x1

    if-ne p1, p2, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v0

    :goto_1
    if-eqz v4, :cond_4

    .line 2197
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v1, 0x1

    add-int/2addr p1, v1

    .line 2198
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v1, :cond_3

    move p1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2200
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    move v1, v4

    move v4, v3

    :cond_4
    const/16 v5, 0x2d

    if-ne p1, v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v0

    :goto_3
    if-eqz v5, :cond_7

    .line 2205
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v1, 0x1

    add-int/2addr p1, v1

    .line 2206
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v1, :cond_6

    move p1, v2

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2208
    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    move v1, v6

    :cond_7
    const/16 v6, 0x30

    const/4 v7, -0x1

    if-lt p1, v6, :cond_1e

    const/16 v8, 0x39

    if-gt p1, v8, :cond_1e

    sub-int/2addr p1, v6

    .line 2216
    :goto_5
    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v1, 0x1

    add-int/2addr v9, v1

    .line 2217
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v9, v1, :cond_8

    move v1, v2

    goto :goto_6

    :cond_8
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2219
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_6
    if-lt v1, v6, :cond_9

    if-gt v1, v8, :cond_9

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr p1, v1

    move v1, v10

    goto :goto_5

    :cond_9
    const/16 v6, 0x2e

    if-ne v1, v6, :cond_a

    .line 2223
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_a
    if-ne v1, p2, :cond_d

    if-nez v4, :cond_b

    .line 2227
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2230
    :cond_b
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v10, 0x1

    add-int/2addr p2, v10

    .line 2231
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v4, :cond_c

    move p2, v2

    goto :goto_7

    :cond_c
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2233
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_7
    move v10, v1

    move v1, p2

    :cond_d
    if-gez p1, :cond_e

    .line 2240
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    :cond_e
    :goto_8
    const/16 p2, 0x10

    const/16 v4, 0x2c

    if-ne v1, v4, :cond_11

    .line 2250
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v10, v3

    add-int/2addr v0, v10

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v3

    .line 2253
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2254
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_f

    goto :goto_9

    :cond_f
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2256
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_9
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x3

    .line 2258
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2259
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v5, :cond_10

    neg-int p1, p1

    :cond_10
    return p1

    :cond_11
    const/16 v6, 0xd

    const/16 v8, 0x20

    if-gt v1, v8, :cond_14

    if-eq v1, v8, :cond_12

    const/16 v8, 0xa

    if-eq v1, v8, :cond_12

    if-eq v1, v6, :cond_12

    const/16 v8, 0x9

    if-eq v1, v8, :cond_12

    const/16 v8, 0xc

    if-eq v1, v8, :cond_12

    const/16 v8, 0x8

    if-ne v1, v8, :cond_14

    .line 2268
    :cond_12
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v10, 0x1

    add-int/2addr p2, v10

    .line 2269
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v4, :cond_13

    move p2, v2

    goto :goto_a

    :cond_13
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2271
    invoke-virtual {v4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_a
    move v10, v1

    move v1, p2

    goto :goto_8

    :cond_14
    const/16 v8, 0x7d

    if-ne v1, v8, :cond_1d

    .line 2278
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v10, 0x1

    add-int/2addr v1, v10

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_16

    .line 2280
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2281
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2284
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2285
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_15

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2287
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_b
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_16
    const/16 p2, 0x5d

    if-ne v1, p2, :cond_18

    const/16 p2, 0xf

    .line 2290
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2291
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2294
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2295
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_17

    goto :goto_c

    :cond_17
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2297
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_c
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_18
    if-ne v1, v8, :cond_1a

    .line 2300
    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2301
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v3

    .line 2304
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2305
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p2, v0, :cond_19

    goto :goto_d

    :cond_19
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2307
    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_d
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_e

    :cond_1a
    if-ne v1, v2, :cond_1c

    const/16 p2, 0x14

    .line 2310
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2311
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v9, v3

    add-int/2addr p2, v9

    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2312
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_e
    const/4 p2, 0x4

    .line 2317
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v5, :cond_1b

    neg-int p1, p1

    :cond_1b
    return p1

    .line 2314
    :cond_1c
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2319
    :cond_1d
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0

    .line 2244
    :cond_1e
    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return v0
.end method

.method public final scanFieldIntArray(J)[I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2327
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2329
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 2334
    :cond_0
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v2

    .line 2335
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v6, 0x1a

    if-lt v4, v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2337
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v4, 0x5b

    const/4 v7, -0x1

    if-eq v2, v4, :cond_2

    .line 2339
    iput v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v3

    .line 2343
    :cond_2
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v2, v5

    .line 2344
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v5, :cond_3

    move v2, v6

    goto :goto_1

    :cond_3
    iget-object v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2346
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_1
    const/16 v5, 0x10

    new-array v8, v5, [I

    const/4 v9, 0x3

    const/16 v10, 0x2c

    const/16 v11, 0x5d

    const/4 v12, 0x1

    if-ne v2, v11, :cond_5

    .line 2354
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v4, 0x1

    add-int/2addr v2, v4

    .line 2355
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_4

    move v2, v6

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2357
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    move v3, v1

    goto/16 :goto_9

    :cond_5
    move v13, v1

    :goto_3
    const/16 v14, 0x2d

    if-ne v2, v14, :cond_7

    .line 2363
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v14, v4, 0x1

    add-int/2addr v2, v4

    .line 2364
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_6

    move v2, v6

    goto :goto_4

    :cond_6
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2366
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_4
    move v4, v14

    move v14, v12

    goto :goto_5

    :cond_7
    move v14, v1

    :goto_5
    const/16 v15, 0x30

    if-lt v2, v15, :cond_18

    const/16 v3, 0x39

    if-gt v2, v3, :cond_17

    add-int/lit8 v2, v2, -0x30

    .line 2373
    :goto_6
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v4, 0x1

    add-int/2addr v7, v4

    .line 2374
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v7, v4, :cond_8

    move v4, v6

    goto :goto_7

    :cond_8
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2376
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_7
    if-lt v4, v15, :cond_9

    if-gt v4, v3, :cond_9

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v4, v4, -0x30

    add-int/2addr v2, v4

    move/from16 v4, v16

    goto :goto_6

    .line 2385
    :cond_9
    array-length v3, v8

    if-lt v13, v3, :cond_a

    .line 2386
    array-length v3, v8

    mul-int/2addr v3, v9

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 2387
    invoke-static {v8, v1, v3, v1, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v3

    :cond_a
    add-int/lit8 v3, v13, 0x1

    if-eqz v14, :cond_b

    neg-int v2, v2

    .line 2390
    :cond_b
    aput v2, v8, v13

    if-ne v4, v10, :cond_d

    .line 2394
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v16, 0x1

    add-int v2, v2, v16

    .line 2395
    iget v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v7, :cond_c

    move v2, v6

    goto :goto_8

    :cond_c
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2397
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_8
    move/from16 v16, v4

    const/4 v7, 0x0

    move v4, v2

    const/4 v2, -0x1

    goto/16 :goto_b

    :cond_d
    if-ne v4, v11, :cond_16

    .line 2400
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v16, 0x1

    add-int v2, v2, v16

    .line 2401
    iget v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_e

    move v2, v6

    goto :goto_9

    :cond_e
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2403
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2414
    :goto_9
    array-length v4, v8

    if-eq v3, v4, :cond_f

    .line 2415
    new-array v4, v3, [I

    .line 2416
    invoke-static {v8, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v4

    :cond_f
    if-ne v2, v10, :cond_10

    .line 2421
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v13, v12

    add-int/2addr v1, v13

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2422
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 2423
    iput v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2424
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v8

    :cond_10
    const/16 v1, 0x7d

    if-ne v2, v1, :cond_15

    .line 2429
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v13, 0x1

    add-int/2addr v2, v13

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v10, :cond_11

    .line 2431
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2432
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2433
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_11
    if-ne v2, v11, :cond_12

    const/16 v1, 0xf

    .line 2435
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2436
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2437
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_12
    if-ne v2, v1, :cond_13

    const/16 v1, 0xd

    .line 2439
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2440
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2441
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_a

    :cond_13
    if-ne v2, v6, :cond_14

    .line 2443
    iget v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v3, v12

    add-int/2addr v1, v3

    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0x14

    .line 2444
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2445
    iput-char v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_a
    const/4 v1, 0x4

    .line 2450
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v8

    :cond_14
    const/4 v2, -0x1

    .line 2447
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    return-object v7

    :cond_15
    const/4 v2, -0x1

    const/4 v7, 0x0

    .line 2452
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7

    :cond_16
    const/4 v2, -0x1

    const/4 v7, 0x0

    :goto_b
    move v13, v3

    move-object v3, v7

    move v7, v2

    move v2, v4

    move/from16 v4, v16

    goto/16 :goto_3

    :cond_17
    move v2, v7

    const/4 v7, 0x0

    goto :goto_c

    :cond_18
    move v2, v7

    move-object v7, v3

    .line 2407
    :goto_c
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v7
.end method

.method public scanFieldLong(J)J
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 2460
    iput v1, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2462
    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    return-wide v3

    .line 2470
    :cond_0
    iget v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v2, 0x1

    add-int/2addr v5, v2

    .line 2471
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v2, :cond_1

    const/16 v2, 0x1a

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2473
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v5, 0x22

    if-ne v2, v5, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    if-eqz v9, :cond_4

    .line 2480
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v2, v6

    .line 2481
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_3

    const/16 v2, 0x1a

    goto :goto_2

    :cond_3
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2483
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_2
    move v6, v10

    :cond_4
    const/16 v10, 0x2d

    if-ne v2, v10, :cond_5

    const/4 v1, 0x1

    :cond_5
    if-eqz v1, :cond_7

    .line 2488
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v6, 0x1

    add-int/2addr v2, v6

    .line 2489
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_6

    const/16 v2, 0x1a

    goto :goto_3

    :cond_6
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2491
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_3
    move v6, v10

    :cond_7
    const/16 v10, 0x30

    const/4 v11, -0x1

    if-lt v2, v10, :cond_1b

    const/16 v12, 0x39

    if-gt v2, v12, :cond_1b

    sub-int/2addr v2, v10

    int-to-long v13, v2

    .line 2500
    :goto_4
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v15, v6, 0x1

    add-int/2addr v2, v6

    .line 2501
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_8

    const/16 v2, 0x1a

    goto :goto_5

    :cond_8
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2503
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    if-lt v2, v10, :cond_9

    if-gt v2, v12, :cond_9

    const-wide/16 v16, 0xa

    mul-long v13, v13, v16

    add-int/lit8 v2, v2, -0x30

    int-to-long v7, v2

    add-long/2addr v13, v7

    move v6, v15

    goto :goto_4

    :cond_9
    const/16 v6, 0x2e

    if-ne v2, v6, :cond_a

    .line 2508
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_a
    if-ne v2, v5, :cond_d

    if-nez v9, :cond_b

    .line 2512
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2515
    :cond_b
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    add-int/2addr v2, v15

    .line 2516
    iget v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_c

    const/16 v2, 0x1a

    goto :goto_6

    :cond_c
    iget-object v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2518
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_6
    move v15, v5

    :cond_d
    cmp-long v5, v13, v3

    if-gez v5, :cond_e

    .line 2525
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    :cond_e
    const/16 v5, 0x10

    const/16 v6, 0x2c

    if-ne v2, v6, :cond_11

    .line 2534
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v15, v3

    add-int/2addr v2, v15

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 2537
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2538
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_f

    const/16 v7, 0x1a

    goto :goto_7

    :cond_f
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2540
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_7
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x3

    .line 2542
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2543
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v1, :cond_10

    neg-long v13, v13

    :cond_10
    return-wide v13

    :cond_11
    const/16 v7, 0x7d

    if-ne v2, v7, :cond_1a

    .line 2548
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    add-int/2addr v2, v15

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_13

    .line 2550
    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2551
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 2554
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2555
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_12

    const/16 v7, 0x1a

    goto :goto_8

    :cond_12
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2557
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_8
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_13
    const/16 v5, 0x5d

    if-ne v2, v5, :cond_15

    const/16 v2, 0xf

    .line 2560
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2561
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 2564
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2565
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_14

    const/16 v7, 0x1a

    goto :goto_9

    :cond_14
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2567
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_9
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_15
    if-ne v2, v7, :cond_17

    const/16 v2, 0xd

    .line 2570
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2571
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v3

    .line 2574
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2575
    iget v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v3, :cond_16

    const/16 v7, 0x1a

    goto :goto_a

    :cond_16
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2577
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    :goto_a
    iput-char v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_17
    const/16 v5, 0x1a

    if-ne v2, v5, :cond_19

    const/16 v2, 0x14

    .line 2580
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2581
    iget v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x1

    sub-int/2addr v8, v3

    add-int/2addr v2, v8

    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2582
    iput-char v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v2, 0x4

    .line 2587
    iput v2, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v1, :cond_18

    neg-long v13, v13

    :cond_18
    return-wide v13

    .line 2584
    :cond_19
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2589
    :cond_1a
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3

    .line 2529
    :cond_1b
    iput v11, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v3
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    .line 2597
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2599
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2606
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, p1, 0x1

    add-int/2addr p2, p1

    .line 2607
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const-string/jumbo v2, "unclosed str, "

    if-ge p2, p1, :cond_11

    .line 2610
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x22

    const/4 v3, -0x1

    if-eq p1, p2, :cond_1

    .line 2615
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2617
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2622
    :cond_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p1, v1

    .line 2623
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, p2, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_10

    .line 2629
    sget-boolean v2, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v2, :cond_2

    .line 2630
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    sub-int v2, v4, p1

    .line 2633
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v1

    invoke-virtual {p0, v5, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 2634
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v0, v2}, Ljava/lang/String;-><init>([CII)V

    move-object v2, v6

    :goto_0
    const/16 v5, 0x5c

    .line 2637
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v3, :cond_6

    move v2, v0

    :goto_1
    add-int/lit8 v6, v4, -0x1

    move v8, v0

    :goto_2
    if-ltz v6, :cond_3

    .line 2641
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v5, :cond_3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, -0x1

    move v2, v7

    goto :goto_2

    .line 2648
    :cond_3
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    sub-int p1, v4, p1

    .line 2655
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr p2, v1

    invoke-virtual {p0, p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object p2

    if-eqz v2, :cond_4

    .line 2657
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2659
    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2, v0, p1}, Ljava/lang/String;-><init>([CII)V

    .line 2660
    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 2661
    invoke-static {p2, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 2651
    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, p2, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_1

    :cond_6
    :goto_3
    add-int/2addr v4, v7

    .line 2670
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 p2, 0x1a

    if-lt v4, p1, :cond_7

    move p1, p2

    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2672
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    const/16 v0, 0x10

    const/16 v1, 0x2c

    if-ne p1, v1, :cond_9

    .line 2676
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v7

    .line 2679
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2680
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2682
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 2684
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2685
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v2

    :cond_9
    const/16 v5, 0x7d

    if-ne p1, v5, :cond_f

    add-int/2addr v4, v7

    .line 2692
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, p1, :cond_a

    move p1, p2

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 2694
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_6
    if-ne p1, v1, :cond_b

    .line 2697
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2698
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2699
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_b
    const/16 v0, 0x5d

    if-ne p1, v0, :cond_c

    const/16 p1, 0xf

    .line 2701
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2702
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2703
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_c
    if-ne p1, v5, :cond_d

    const/16 p1, 0xd

    .line 2705
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2706
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2707
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_d
    if-ne p1, p2, :cond_e

    const/16 p1, 0x14

    .line 2709
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 2710
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 2711
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_7
    const/4 p1, 0x4

    .line 2716
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-object v2

    .line 2713
    :cond_e
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2714
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2718
    :cond_f
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 2719
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    return-object p1

    .line 2625
    :cond_10
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2608
    :cond_11
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public scanFieldSymbol(J)J
    .locals 10

    const/4 v0, 0x0

    .line 4125
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    .line 4127
    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 4132
    :cond_0
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, p1, 0x1

    add-int/2addr p2, p1

    .line 4133
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/16 v3, 0x1a

    if-lt p2, p1, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4135
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_0
    const/16 p2, 0x22

    const/4 v4, -0x1

    if-eq p1, p2, :cond_2

    .line 4138
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_2
    const-wide v5, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    .line 4145
    :goto_1
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v2, 0x1

    add-int/2addr p1, v2

    .line 4146
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_3

    move p1, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4148
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_2
    if-ne p1, p2, :cond_d

    .line 4151
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, v7, 0x1

    add-int/2addr p1, v7

    .line 4152
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v2, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4154
    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_3
    const/16 v2, 0x2c

    if-ne p1, v2, :cond_6

    .line 4168
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p2, p2, -0x1

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 p1, p1, 0x1

    .line 4171
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4172
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4174
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 p1, 0x3

    .line 4176
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    :cond_6
    const/16 v7, 0x7d

    if-ne p1, v7, :cond_c

    .line 4181
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, p2, 0x1

    add-int/2addr p1, p2

    .line 4182
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, p2, :cond_7

    move p1, v3

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 4184
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_5
    if-ne p1, v2, :cond_8

    const/16 p1, 0x10

    .line 4186
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4187
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4188
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_8
    const/16 p2, 0x5d

    if-ne p1, p2, :cond_9

    const/16 p1, 0xf

    .line 4190
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4191
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4192
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_9
    if-ne p1, v7, :cond_a

    const/16 p1, 0xd

    .line 4194
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4195
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4196
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_a
    if-ne p1, v3, :cond_b

    const/16 p1, 0x14

    .line 4198
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 4199
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr p1, v8

    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 4200
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    const/4 p1, 0x4

    .line 4205
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v5

    .line 4202
    :cond_b
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    .line 4207
    :cond_c
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_d
    int-to-long v8, p1

    xor-long/2addr v5, v8

    const-wide v8, 0x100000001b3L

    mul-long/2addr v5, v8

    const/16 v2, 0x5c

    if-ne p1, v2, :cond_e

    .line 4162
    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    return-wide v0

    :cond_e
    move v2, v7

    goto/16 :goto_1
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    .line 4215
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result p1

    return p1
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 35

    move-object/from16 v9, p0

    move/from16 v10, p2

    const/16 v0, 0x2f

    const/16 v11, 0xd

    const/16 v12, 0x39

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v8, 0x5

    const/16 v16, 0x1

    const/16 v7, 0x30

    const/4 v6, 0x0

    if-nez p1, :cond_4

    if-le v10, v11, :cond_4

    .line 4220
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4221
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4222
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v15

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4223
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v14

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4224
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4225
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v8

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4227
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v10

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4228
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v10

    sub-int/2addr v8, v15

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    if-ne v1, v0, :cond_4

    const/16 v1, 0x44

    if-ne v2, v1, :cond_4

    const/16 v1, 0x61

    if-ne v3, v1, :cond_4

    const/16 v1, 0x74

    if-ne v4, v1, :cond_4

    const/16 v1, 0x65

    if-ne v5, v1, :cond_4

    const/16 v1, 0x28

    if-ne v11, v1, :cond_4

    if-ne v14, v0, :cond_4

    const/16 v1, 0x29

    if-ne v8, v1, :cond_4

    const/4 v0, -0x1

    move v1, v13

    :goto_0
    if-ge v1, v10, :cond_2

    .line 4233
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    if-lt v2, v7, :cond_2

    if-le v2, v12, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    return v6

    .line 4243
    :cond_3
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    sub-int/2addr v0, v1

    .line 4244
    invoke-direct {v9, v1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    .line 4245
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 4247
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v2, v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    iput-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    .line 4248
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v0, 0x5

    .line 4250
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_4
    const/16 v11, 0x54

    const/16 v14, 0x10

    const/16 v4, 0x8

    const/16 v3, 0x9

    const/16 v2, 0xe

    const/16 v1, 0x2d

    const/16 v20, 0xa

    if-eq v10, v4, :cond_3f

    if-eq v10, v2, :cond_3f

    if-ne v10, v14, :cond_6

    .line 4256
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v2, 0xa

    .line 4258
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v11, :cond_5

    const/16 v5, 0x20

    if-eq v2, v5, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    move v8, v1

    move/from16 v21, v3

    move v7, v4

    move v12, v6

    move v13, v14

    const/4 v11, 0x5

    const/16 v14, 0xe

    const/16 v15, 0xb

    goto/16 :goto_18

    :cond_6
    :goto_4
    const/16 v2, 0x11

    if-ne v10, v2, :cond_7

    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    .line 4259
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_7

    goto :goto_3

    :cond_7
    if-ge v10, v3, :cond_8

    return v6

    .line 4379
    :cond_8
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4380
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4381
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v15

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    .line 4382
    iget v7, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x3

    add-int/lit8 v7, v7, 0x3

    invoke-virtual {v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4383
    iget v8, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v9, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v8

    .line 4384
    iget v12, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v19, 0x5

    add-int/lit8 v12, v12, 0x5

    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    .line 4385
    iget v15, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v13

    invoke-virtual {v9, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    .line 4386
    iget v13, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0x7

    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    .line 4387
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v11, v4

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4388
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v3

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v6, 0x65e5

    if-ne v8, v1, :cond_9

    if-eq v13, v1, :cond_a

    :cond_9
    if-ne v8, v0, :cond_b

    if-ne v13, v0, :cond_b

    :cond_a
    move/from16 v13, v20

    const v8, 0xc77c

    :goto_5
    move/from16 v34, v11

    move v11, v4

    move v4, v7

    move/from16 v7, v34

    goto/16 :goto_e

    :cond_b
    if-ne v8, v1, :cond_d

    if-ne v15, v1, :cond_d

    const/16 v0, 0x20

    if-ne v11, v0, :cond_c

    move v4, v7

    move v15, v12

    move v11, v13

    const/16 v7, 0x30

    const v8, 0xc77c

    const/16 v12, 0x30

    const/16 v13, 0x8

    goto/16 :goto_e

    :cond_c
    move v4, v7

    move v15, v12

    move v7, v13

    const v8, 0xc77c

    const/16 v12, 0x30

    move v13, v3

    goto/16 :goto_e

    :cond_d
    const/16 v0, 0x2e

    if-ne v14, v0, :cond_e

    const/16 v0, 0x2e

    if-eq v12, v0, :cond_f

    :cond_e
    if-ne v14, v1, :cond_10

    if-ne v12, v1, :cond_10

    :cond_f
    move v12, v7

    move v14, v11

    move v7, v2

    move v11, v5

    move v5, v13

    move v2, v15

    move/from16 v13, v20

    move v15, v8

    const v8, 0xc77c

    goto/16 :goto_e

    :cond_10
    const/16 v0, 0x5e74

    if-eq v8, v0, :cond_12

    const v0, 0xb144

    if-ne v8, v0, :cond_11

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    return v0

    :cond_12
    :goto_6
    const/16 v0, 0x6708

    if-eq v13, v0, :cond_1a

    const v0, 0xc6d4

    if-ne v13, v0, :cond_13

    goto :goto_b

    :cond_13
    const/16 v0, 0x6708

    if-eq v15, v0, :cond_15

    const v0, 0xc6d4

    if-ne v15, v0, :cond_14

    goto :goto_7

    :cond_14
    const/4 v0, 0x0

    return v0

    :cond_15
    :goto_7
    const/4 v0, 0x0

    const v8, 0xc77c

    if-eq v11, v6, :cond_19

    if-ne v11, v8, :cond_16

    goto :goto_9

    :cond_16
    if-eq v4, v6, :cond_18

    if-ne v4, v8, :cond_17

    goto :goto_8

    :cond_17
    return v0

    :cond_18
    :goto_8
    move v4, v7

    move v15, v12

    move v7, v13

    move/from16 v13, v20

    goto :goto_a

    :cond_19
    :goto_9
    move v4, v7

    move v15, v12

    move v11, v13

    move/from16 v13, v20

    const/16 v7, 0x30

    :goto_a
    const/16 v12, 0x30

    goto :goto_e

    :cond_1a
    :goto_b
    const v8, 0xc77c

    if-eq v4, v6, :cond_1e

    if-ne v4, v8, :cond_1b

    goto :goto_d

    .line 4445
    :cond_1b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_1d

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v0, 0x0

    return v0

    :cond_1d
    :goto_c
    const/16 v13, 0xb

    goto/16 :goto_5

    :cond_1e
    :goto_d
    move v4, v7

    move/from16 v13, v20

    const/16 v7, 0x30

    :goto_e
    move/from16 v26, v2

    move/from16 v27, v5

    move/from16 v28, v14

    move/from16 v29, v4

    move/from16 v30, v12

    move/from16 v31, v15

    move/from16 v32, v7

    move/from16 v33, v11

    .line 4472
    invoke-static/range {v26 .. v33}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_1f

    const/16 v25, 0x0

    return v25

    :cond_1f
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move v10, v1

    move v1, v2

    move v2, v5

    move/from16 v21, v3

    move v3, v14

    const/16 v14, 0x8

    const/16 v14, 0x3a

    move v5, v12

    move v14, v6

    move/from16 v12, v25

    move v6, v15

    const/16 v15, 0x30

    move v15, v8

    move v8, v11

    .line 4476
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    .line 4478
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    const/16 v0, 0x54

    if-eq v7, v0, :cond_27

    const/16 v0, 0x20

    if-ne v7, v0, :cond_20

    if-nez p1, :cond_20

    goto/16 :goto_12

    :cond_20
    const/16 v0, 0x22

    if-eq v7, v0, :cond_26

    const/16 v0, 0x1a

    if-eq v7, v0, :cond_26

    if-eq v7, v14, :cond_26

    if-ne v7, v15, :cond_21

    goto :goto_11

    :cond_21
    const/16 v0, 0x2b

    if-eq v7, v0, :cond_23

    if-ne v7, v10, :cond_22

    goto :goto_f

    :cond_22
    return v12

    .line 4494
    :cond_23
    :goto_f
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    add-int/lit8 v1, v13, 0x6

    if-ne v0, v1, :cond_25

    .line 4495
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-ne v0, v1, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    .line 4496
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_25

    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v11, 0x5

    add-int/2addr v0, v11

    .line 4497
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_24

    goto :goto_10

    :cond_24
    const/16 v1, 0x30

    const/16 v2, 0x30

    const/16 v3, 0x30

    const/16 v4, 0x30

    const/16 v5, 0x30

    const/16 v6, 0x30

    move-object/from16 v0, p0

    .line 4501
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4502
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v14, 0xe

    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 4503
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    const/4 v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    invoke-virtual {v9, v7, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    return v16

    :cond_25
    :goto_10
    return v12

    :cond_26
    :goto_11
    const/4 v11, 0x5

    const/16 v14, 0xe

    .line 4484
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v15, 0xb

    invoke-virtual {v0, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 4485
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 4486
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 4487
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 4489
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4491
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_27
    :goto_12
    const/4 v11, 0x5

    const/16 v14, 0xe

    const/16 v15, 0xb

    add-int/lit8 v7, v13, 0x9

    move v8, v10

    move/from16 v10, p2

    if-ge v10, v7, :cond_28

    return v12

    .line 4511
    :cond_28
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x3

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_29

    return v12

    .line 4514
    :cond_29
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v2, 0x6

    add-int/2addr v0, v2

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_2a

    return v12

    .line 4518
    :cond_2a
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    .line 4519
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    .line 4520
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v22

    .line 4521
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v11

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v23

    .line 4522
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v25

    .line 4523
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    const/16 v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v24

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 4525
    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v0

    if-nez v0, :cond_2b

    return v12

    :cond_2b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v5, v25

    move/from16 v6, v24

    .line 4529
    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    .line 4531
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_3d

    add-int/lit8 v0, v13, 0xb

    if-ge v10, v0, :cond_2c

    return v12

    .line 4556
    :cond_2c
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_3c

    const/16 v3, 0x39

    if-le v1, v3, :cond_2d

    goto/16 :goto_17

    :cond_2d
    sub-int/2addr v1, v2

    if-le v10, v0, :cond_2e

    .line 4564
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    add-int/2addr v0, v15

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_2e

    if-gt v0, v3, :cond_2e

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    const/4 v0, 0x2

    goto :goto_13

    :cond_2e
    move/from16 v0, v16

    :goto_13
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f

    .line 4572
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xc

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_2f

    const/16 v4, 0x39

    if-gt v2, v4, :cond_2f

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    const/4 v0, 0x3

    .line 4579
    :cond_2f
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 4582
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v1, v0

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_33

    if-ne v1, v8, :cond_30

    goto :goto_14

    :cond_30
    const/16 v2, 0x5a

    if-ne v1, v2, :cond_32

    .line 4620
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    if-eqz v1, :cond_31

    .line 4621
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    .line 4622
    array-length v2, v1

    if-lez v2, :cond_31

    .line 4623
    aget-object v1, v1, v12

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 4624
    iget-object v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_31
    move/from16 v6, v16

    goto/16 :goto_16

    :cond_32
    move v6, v12

    goto/16 :goto_16

    .line 4584
    :cond_33
    :goto_14
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_3c

    const/16 v4, 0x31

    if-le v2, v4, :cond_34

    goto/16 :goto_17

    .line 4589
    :cond_34
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    add-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    const/4 v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_3c

    const/16 v3, 0x39

    if-le v4, v3, :cond_35

    goto/16 :goto_17

    .line 4594
    :cond_35
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    const/4 v5, 0x3

    add-int/2addr v3, v5

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x3a

    if-ne v3, v5, :cond_38

    .line 4596
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-eq v3, v5, :cond_36

    return v12

    .line 4601
    :cond_36
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/2addr v3, v11

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_37

    return v12

    :cond_37
    const/16 v18, 0x6

    goto :goto_15

    :cond_38
    const/16 v5, 0x30

    if-ne v3, v5, :cond_3a

    .line 4607
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v13

    add-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_39

    return v12

    :cond_39
    move/from16 v18, v11

    goto :goto_15

    :cond_3a
    const/16 v18, 0x3

    .line 4616
    :goto_15
    invoke-virtual {v9, v1, v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    move/from16 v6, v18

    .line 4629
    :goto_16
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v13, 0xa

    add-int/2addr v13, v0

    add-int/2addr v13, v6

    add-int/2addr v1, v13

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3b

    const/16 v1, 0x22

    if-eq v0, v1, :cond_3b

    return v12

    .line 4633
    :cond_3b
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v13

    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iput-char v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4635
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16

    :cond_3c
    :goto_17
    return v12

    .line 4537
    :cond_3d
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 4539
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v7

    iput v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 4541
    iput v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_3e

    .line 4545
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    if-eqz v0, :cond_3e

    .line 4546
    invoke-static {v12}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 4547
    array-length v1, v0

    if-lez v1, :cond_3e

    .line 4548
    aget-object v0, v0, v12

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 4549
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3e
    return v16

    :cond_3f
    move v8, v1

    move/from16 v21, v3

    move v7, v4

    move v12, v6

    move v13, v14

    const/4 v11, 0x5

    const/16 v15, 0xb

    move v14, v2

    :goto_18
    if-eqz p1, :cond_40

    return v12

    .line 4266
    :cond_40
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4267
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4268
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v3, 0x2

    add-int/2addr v0, v3

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    .line 4269
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v4, 0x3

    add-int/2addr v0, v4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4270
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4271
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v11

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4272
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v18, 0x6

    add-int/lit8 v6, v6, 0x6

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    .line 4273
    iget v11, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v11, 0x7

    invoke-virtual {v9, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    .line 4274
    iget v14, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v14, v7

    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    if-ne v0, v8, :cond_41

    if-ne v11, v8, :cond_41

    move/from16 v8, v16

    goto :goto_19

    :cond_41
    move v8, v12

    :goto_19
    if-eqz v8, :cond_42

    if-ne v10, v13, :cond_42

    move/from16 v18, v16

    goto :goto_1a

    :cond_42
    move/from16 v18, v12

    :goto_1a
    if-eqz v8, :cond_43

    const/16 v8, 0x11

    if-ne v10, v8, :cond_43

    move/from16 v19, v16

    goto :goto_1b

    :cond_43
    move/from16 v19, v12

    :goto_1b
    if-nez v19, :cond_45

    if-eqz v18, :cond_44

    goto :goto_1c

    :cond_44
    move v8, v6

    move v6, v5

    move v5, v0

    goto :goto_1d

    .line 4287
    :cond_45
    :goto_1c
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v11, v0

    move v8, v14

    :goto_1d
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v4

    move/from16 v28, v5

    move/from16 v29, v6

    move/from16 v30, v8

    move/from16 v31, v11

    .line 4300
    invoke-static/range {v24 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v0

    if-nez v0, :cond_46

    return v12

    :cond_46
    move-object/from16 v0, p0

    move v12, v7

    move v7, v8

    move v8, v11

    .line 4304
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    if-eq v10, v12, :cond_53

    .line 4308
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    .line 4309
    iget v1, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4310
    iget v2, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v15

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    .line 4311
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v7

    .line 4312
    iget v3, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v4, 0xd

    add-int/2addr v3, v4

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    if-eqz v19, :cond_47

    const/16 v4, 0x54

    if-ne v1, v4, :cond_47

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_47

    .line 4316
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v13

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_49

    :cond_47
    if-eqz v18, :cond_4a

    const/16 v4, 0x20

    if-eq v1, v4, :cond_48

    const/16 v4, 0x54

    if-ne v1, v4, :cond_4a

    :cond_48
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_4a

    .line 4320
    :cond_49
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v1, 0xe

    add-int/2addr v0, v1

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    .line 4321
    iget v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0xf

    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v14, v2

    const/16 v3, 0x30

    move v2, v0

    move v0, v7

    const/16 v7, 0x30

    :cond_4a
    move/from16 v26, v14

    move/from16 v27, v0

    move/from16 v28, v1

    move/from16 v29, v2

    move/from16 v30, v7

    move/from16 v31, v3

    .line 4333
    invoke-static/range {v26 .. v31}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v4

    if-nez v4, :cond_4b

    const/4 v4, 0x0

    return v4

    :cond_4b
    const/16 v4, 0x11

    if-ne v10, v4, :cond_52

    if-nez v19, :cond_52

    .line 4338
    iget v4, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v5, 0xe

    add-int/2addr v4, v5

    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    .line 4339
    iget v5, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0xf

    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v5

    .line 4340
    iget v6, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v6, v13

    invoke-virtual {v9, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v6

    const/16 v8, 0x30

    if-lt v4, v8, :cond_51

    const/16 v10, 0x39

    if-le v4, v10, :cond_4c

    goto :goto_20

    :cond_4c
    if-lt v5, v8, :cond_50

    if-le v5, v10, :cond_4d

    goto :goto_1f

    :cond_4d
    if-lt v6, v8, :cond_4f

    if-le v6, v10, :cond_4e

    goto :goto_1e

    :cond_4e
    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x64

    sub-int/2addr v5, v8

    mul-int/lit8 v5, v5, 0xa

    add-int/2addr v4, v5

    sub-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_21

    :cond_4f
    :goto_1e
    const/4 v4, 0x0

    return v4

    :cond_50
    :goto_1f
    const/4 v4, 0x0

    return v4

    :cond_51
    :goto_20
    const/4 v4, 0x0

    return v4

    :cond_52
    const/4 v4, 0x0

    :goto_21
    move v6, v4

    const/16 v4, 0x30

    sub-int/2addr v14, v4

    mul-int/lit8 v14, v14, 0xa

    sub-int/2addr v0, v4

    add-int/2addr v0, v14

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v2, v4

    add-int/2addr v1, v2

    sub-int/2addr v7, v4

    mul-int/lit8 v7, v7, 0xa

    sub-int/2addr v3, v4

    add-int v2, v7, v3

    move v4, v6

    move v6, v0

    goto :goto_22

    :cond_53
    const/4 v4, 0x0

    move v1, v4

    move v2, v1

    move v6, v2

    .line 4366
    :goto_22
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 4367
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 4368
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 4369
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 4371
    iput v0, v9, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v16
.end method

.method public final scanLongValue()J
    .locals 14

    const/4 v0, 0x0

    .line 1756
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1760
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v2, 0x1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v2

    .line 1764
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1767
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1768
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v3, v4, :cond_0

    .line 1771
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-wide v3, v0

    move v0, v2

    goto :goto_0

    .line 1769
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    const-wide/16 v5, 0x0

    .line 1780
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x30

    if-lt v1, v7, :cond_5

    const/16 v7, 0x39

    if-gt v1, v7, :cond_5

    add-int/lit8 v1, v1, -0x30

    const-wide v7, -0xcccccccccccccccL

    cmp-long v7, v5, v7

    const-string v8, ", "

    const-string v9, "error long value, "

    if-ltz v7, :cond_4

    const-wide/16 v10, 0xa

    mul-long/2addr v5, v10

    int-to-long v10, v1

    add-long v12, v3, v10

    cmp-long v1, v5, v12

    if-ltz v1, :cond_3

    sub-long/2addr v5, v10

    .line 1796
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1799
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1800
    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_2

    const/16 v1, 0x1a

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1802
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1789
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1784
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-nez v0, :cond_6

    neg-long v5, v5

    :cond_6
    return-wide v5
.end method

.method public final scanNumber()V
    .locals 9

    .line 1292
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x0

    .line 1293
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1295
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    const/16 v4, 0x1a

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    .line 1296
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    .line 1299
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1300
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1302
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1307
    :cond_1
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x39

    const/16 v6, 0x30

    if-lt v0, v6, :cond_3

    if-gt v0, v2, :cond_3

    .line 1309
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1315
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1316
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1318
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_2
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    .line 1322
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1324
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 1325
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1328
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1329
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1331
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1333
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1336
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_6

    if-gt v0, v2, :cond_6

    .line 1338
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1345
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    move v0, v4

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1347
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_5
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    .line 1352
    :cond_6
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x4c

    if-ne v0, v1, :cond_7

    .line 1353
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1354
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_7
    const/16 v1, 0x53

    if-ne v0, v1, :cond_8

    .line 1356
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1357
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_8
    const/16 v1, 0x42

    if-ne v0, v1, :cond_9

    .line 1359
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1360
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_a

    :cond_9
    const/16 v1, 0x46

    if-ne v0, v1, :cond_a

    .line 1362
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1363
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1364
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_a
    const/16 v7, 0x44

    if-ne v0, v7, :cond_b

    .line 1366
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1367
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1368
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_a

    :cond_b
    const/16 v8, 0x65

    if-eq v0, v8, :cond_c

    const/16 v8, 0x45

    if-ne v0, v8, :cond_15

    .line 1371
    :cond_c
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1374
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1375
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v8, :cond_d

    move v0, v4

    goto :goto_6

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1377
    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_6
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2b

    if-eq v0, v8, :cond_e

    if-ne v0, v3, :cond_10

    .line 1382
    :cond_e
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1385
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1386
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_f

    move v0, v4

    goto :goto_7

    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1388
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_7
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1393
    :cond_10
    :goto_8
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v0, v6, :cond_12

    if-gt v0, v2, :cond_12

    .line 1395
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1401
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1402
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v3, :cond_11

    move v0, v4

    goto :goto_9

    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1404
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_9
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    .line 1408
    :cond_12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v0, v7, :cond_13

    if-ne v0, v1, :cond_14

    .line 1410
    :cond_13
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1411
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1414
    :cond_14
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    .line 1415
    iput-boolean v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    .line 1418
    :cond_15
    :goto_a
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    .line 1419
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_b

    :cond_16
    const/4 v0, 0x2

    .line 1421
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_b
    return-void
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 23

    move-object/from16 v1, p0

    .line 1452
    iget v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x0

    .line 1456
    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1460
    iget-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x2d

    const/4 v6, 0x1

    if-ne v3, v4, :cond_1

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v3, 0x0

    add-int/2addr v3, v6

    .line 1464
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v3, v0, 0x1

    .line 1467
    iput v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1468
    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v9, :cond_0

    const/16 v3, 0x1a

    goto :goto_0

    :cond_0
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1470
    invoke-virtual {v9, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :goto_0
    iput-char v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move v3, v6

    goto :goto_1

    :cond_1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v2

    :goto_1
    const-wide/16 v9, 0x0

    move v12, v2

    move v11, v6

    .line 1480
    :goto_2
    iget-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const-wide v14, -0xcccccccccccccccL

    const/16 v5, 0x12

    const/16 v2, 0x39

    const-wide/16 v16, 0xa

    const/16 v4, 0x30

    if-lt v13, v4, :cond_6

    if-gt v13, v2, :cond_6

    add-int/lit8 v13, v13, -0x30

    if-ge v11, v5, :cond_3

    mul-long v9, v9, v16

    int-to-long v4, v13

    :cond_2
    :goto_3
    sub-long/2addr v9, v4

    goto :goto_4

    :cond_3
    cmp-long v2, v9, v14

    if-gez v2, :cond_4

    move v12, v6

    :cond_4
    mul-long v9, v9, v16

    int-to-long v4, v13

    add-long v13, v7, v4

    cmp-long v2, v9, v13

    if-gez v2, :cond_2

    move v12, v6

    goto :goto_3

    .line 1502
    :goto_4
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1505
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1506
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v4, :cond_5

    const/16 v2, 0x1a

    goto :goto_5

    :cond_5
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1508
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_5
    iput-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x0

    const/16 v4, 0x2d

    goto :goto_2

    .line 1516
    :cond_6
    iget-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v14, 0x2e

    const/16 v15, 0x46

    const/16 v19, 0x0

    if-ne v13, v14, :cond_10

    .line 1519
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v13, v6

    iput v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1522
    iget v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v6

    iput v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1523
    iget v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v13, v14, :cond_7

    const/16 v13, 0x1a

    goto :goto_6

    :cond_7
    iget-object v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1525
    invoke-virtual {v14, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    :goto_6
    iput-char v13, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v13, 0x0

    .line 1529
    :goto_7
    iget-char v14, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v14, v4, :cond_c

    if-gt v14, v2, :cond_c

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, -0x30

    if-ge v11, v5, :cond_9

    mul-long v9, v9, v16

    int-to-long v4, v14

    :cond_8
    :goto_8
    sub-long/2addr v9, v4

    goto :goto_9

    :cond_9
    const-wide v4, -0xcccccccccccccccL

    cmp-long v18, v9, v4

    if-gez v18, :cond_a

    move v12, v6

    :cond_a
    mul-long v9, v9, v16

    int-to-long v4, v14

    add-long v20, v7, v4

    cmp-long v14, v9, v20

    if-gez v14, :cond_8

    move v12, v6

    goto :goto_8

    .line 1548
    :goto_9
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1554
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1555
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v5, :cond_b

    const/16 v4, 0x1a

    goto :goto_a

    :cond_b
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1557
    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_a
    iput-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v11, v11, 0x1

    const/16 v4, 0x30

    const/16 v5, 0x12

    goto :goto_7

    :cond_c
    if-nez v3, :cond_d

    neg-long v9, v9

    .line 1564
    :cond_d
    iget-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v15, :cond_e

    const/16 v5, 0x44

    if-ne v4, v5, :cond_f

    .line 1565
    :cond_e
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1566
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_f
    move v4, v6

    goto :goto_c

    :cond_10
    if-nez v3, :cond_11

    neg-long v9, v9

    .line 1573
    :cond_11
    iget-char v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x4c

    if-ne v4, v5, :cond_13

    .line 1574
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1575
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1576
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    :cond_12
    :goto_b
    const/4 v4, 0x0

    const/4 v13, 0x0

    goto :goto_c

    :cond_13
    const/16 v5, 0x53

    if-ne v4, v5, :cond_14

    .line 1578
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1579
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v4, v9

    int-to-short v4, v4

    .line 1580
    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v19

    goto :goto_b

    :cond_14
    const/16 v5, 0x42

    if-ne v4, v5, :cond_15

    .line 1582
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1583
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-int v4, v9

    int-to-byte v4, v4

    .line 1584
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    goto :goto_b

    :cond_15
    if-ne v4, v15, :cond_16

    .line 1586
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1587
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-float v4, v9

    .line 1588
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v19

    goto :goto_b

    :cond_16
    const/16 v5, 0x44

    if-ne v4, v5, :cond_12

    .line 1590
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v4, v6

    iput v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1591
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    long-to-double v4, v9

    .line 1592
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    goto :goto_b

    .line 1597
    :goto_c
    iget-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x65

    const/16 v8, 0x2b

    if-eq v5, v7, :cond_18

    const/16 v7, 0x45

    if-ne v5, v7, :cond_17

    goto :goto_d

    :cond_17
    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_14

    .line 1599
    :cond_18
    :goto_d
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1602
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1603
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_19

    const/16 v5, 0x1a

    goto :goto_e

    :cond_19
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1605
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_e
    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v5, v8, :cond_1a

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_1c

    .line 1610
    :cond_1a
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1613
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1614
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_1b

    const/16 v5, 0x1a

    goto :goto_f

    :cond_1b
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1616
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_f
    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1621
    :cond_1c
    :goto_10
    iget-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v7, 0x30

    if-lt v5, v7, :cond_1e

    if-gt v5, v2, :cond_1e

    .line 1623
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1629
    iget v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v5, v6

    iput v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1630
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v7, :cond_1d

    const/16 v5, 0x1a

    goto :goto_11

    :cond_1d
    iget-object v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1632
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    :goto_11
    iput-char v5, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_10

    .line 1636
    :cond_1e
    iget-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x44

    if-eq v2, v5, :cond_20

    if-ne v2, v15, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 v2, 0x0

    goto :goto_13

    .line 1638
    :cond_20
    :goto_12
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/2addr v2, v6

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1639
    iget-char v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 1640
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_13
    move v5, v6

    :goto_14
    if-nez v4, :cond_24

    if-nez v5, :cond_24

    if-eqz v12, :cond_21

    .line 1649
    iget v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v3, v2, v0

    .line 1650
    new-array v3, v3, [C

    .line 1651
    iget-object v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Ljava/lang/String;->getChars(II[CI)V

    .line 1652
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 1653
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v19, v2

    :cond_21
    if-nez v19, :cond_23

    const-wide/32 v2, -0x80000000

    cmp-long v0, v9, v2

    if-lez v0, :cond_22

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v9, v2

    if-gez v0, :cond_22

    long-to-int v0, v9

    .line 1657
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    goto :goto_15

    .line 1659
    :cond_22
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    :cond_23
    :goto_15
    return-object v19

    .line 1665
    :cond_24
    iget v4, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v4, v0

    if-eqz v2, :cond_25

    add-int/lit8 v4, v4, -0x1

    :cond_25
    if-nez v5, :cond_28

    .line 1675
    iget v7, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v11

    if-eqz v7, :cond_28

    if-nez v12, :cond_26

    .line 1678
    invoke-static {v9, v10, v13}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_1c

    .line 1680
    :cond_26
    iget-object v2, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v3, v2

    if-ge v4, v3, :cond_27

    .line 1681
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v4

    const/4 v7, 0x0

    invoke-virtual {v3, v0, v5, v2, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1682
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_16

    :cond_27
    const/4 v7, 0x0

    .line 1684
    new-array v2, v4, [C

    .line 1685
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v5, v0, v4

    invoke-virtual {v3, v0, v5, v2, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v2

    .line 1688
    :goto_16
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v7, v4}, Ljava/math/BigDecimal;-><init>([CII)V

    move-object v0, v2

    goto/16 :goto_1c

    :cond_28
    const/4 v7, 0x0

    .line 1691
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v10, v9

    if-ge v4, v10, :cond_29

    .line 1692
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v11, v0, v4

    invoke-virtual {v10, v0, v11, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    .line 1693
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    goto :goto_17

    .line 1695
    :cond_29
    new-array v9, v4, [C

    .line 1696
    iget-object v10, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v11, v0, v4

    invoke-virtual {v10, v0, v11, v9, v7}, Ljava/lang/String;->getChars(II[CI)V

    move-object v0, v9

    :goto_17
    const/16 v9, 0x9

    if-gt v4, v9, :cond_32

    if-nez v5, :cond_32

    .line 1702
    :try_start_0
    aget-char v5, v0, v7

    const/16 v7, 0x2d

    if-eq v5, v7, :cond_2b

    if-ne v5, v8, :cond_2a

    goto :goto_18

    :cond_2a
    move v7, v6

    const/16 v8, 0x30

    goto :goto_19

    :cond_2b
    :goto_18
    const/4 v5, 0x2

    .line 1704
    aget-char v7, v0, v6

    const/16 v8, 0x30

    move/from16 v22, v7

    move v7, v5

    move/from16 v5, v22

    :goto_19
    sub-int/2addr v5, v8

    move v8, v7

    move v7, v5

    const/4 v5, 0x0

    :goto_1a
    if-ge v8, v4, :cond_2e

    .line 1710
    aget-char v9, v0, v8

    const/16 v10, 0x2e

    if-ne v9, v10, :cond_2c

    move v5, v6

    goto :goto_1b

    :cond_2c
    add-int/lit8 v9, v9, -0x30

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v9

    if-eqz v5, :cond_2d

    mul-int/lit8 v5, v5, 0xa

    :cond_2d
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a

    :cond_2e
    if-ne v2, v15, :cond_30

    int-to-float v0, v7

    int-to-float v2, v5

    div-float/2addr v0, v2

    if-eqz v3, :cond_2f

    neg-float v0, v0

    .line 1730
    :cond_2f
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_30
    int-to-double v6, v7

    int-to-double v4, v5

    div-double/2addr v6, v4

    if-eqz v3, :cond_31

    neg-double v6, v6

    .line 1738
    :cond_31
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1741
    :cond_32
    new-instance v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5, v4}, Ljava/lang/String;-><init>([CII)V

    if-ne v2, v15, :cond_33

    .line 1743
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1c

    .line 1745
    :cond_33
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1c
    return-object v0

    :catch_0
    move-exception v0

    .line 1748
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final scanString()V
    .locals 11

    .line 987
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 989
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 990
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    sub-int v1, v3, v1

    .line 999
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v4, v2

    invoke-virtual {p0, v4, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x5c

    if-lez v1, :cond_4

    add-int/lit8 v8, v1, -0x1

    .line 1000
    aget-char v8, v4, v8

    if-ne v8, v7, :cond_4

    add-int/lit8 v8, v1, -0x2

    move v9, v2

    :goto_1
    if-ltz v8, :cond_0

    .line 1005
    aget-char v10, v4, v8

    if-ne v10, v7, :cond_0

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 1011
    :cond_0
    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_1

    goto :goto_2

    .line 1015
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    sub-int v7, v6, v3

    add-int/2addr v7, v1

    .line 1019
    array-length v8, v4

    if-lt v7, v8, :cond_3

    .line 1020
    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    if-ge v8, v7, :cond_2

    move v8, v7

    .line 1024
    :cond_2
    new-array v8, v8, [C

    .line 1025
    array-length v9, v4

    invoke-static {v4, v5, v8, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v8

    .line 1028
    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3, v6, v4, v1}, Ljava/lang/String;->getChars(II[CI)V

    move v3, v6

    move v1, v7

    move v6, v2

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v6, :cond_6

    :goto_3
    if-ge v5, v1, :cond_6

    .line 1037
    aget-char v0, v4, v5

    if-ne v0, v7, :cond_5

    move v6, v2

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1043
    :cond_6
    iput-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1044
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1045
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 1046
    iput-boolean v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    add-int/2addr v3, v2

    .line 1048
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1052
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v3, v0, :cond_7

    const/16 v0, 0x1a

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1054
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_4
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v0, 0x4

    .line 1057
    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    .line 992
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unclosed str, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 7

    .line 1061
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    .line 1062
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 1068
    sget-boolean v3, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 1069
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    sub-int v3, v1, v0

    .line 1072
    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v5

    .line 1073
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v4, v3}, Ljava/lang/String;-><init>([CII)V

    move-object v3, v6

    :goto_0
    const/16 v5, 0x5c

    .line 1076
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-eq v6, v2, :cond_3

    :goto_1
    add-int/lit8 v2, v1, -0x1

    move v3, v4

    :goto_2
    if-ltz v2, :cond_1

    .line 1080
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1086
    :cond_1
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_2

    sub-int p1, v1, v0

    .line 1093
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    .line 1094
    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 1089
    :cond_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 1097
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 1101
    iget p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, p1, :cond_4

    const/16 p1, 0x1a

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 1103
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    :goto_4
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v3

    .line 1064
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unclosed str, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 4

    .line 703
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    const/16 v2, 0xc

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x22

    if-ne v0, v2, :cond_1

    .line 716
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x27

    if-ne v0, v2, :cond_2

    .line 720
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 725
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_3
    const/16 v1, 0x2c

    if-ne v0, v1, :cond_4

    .line 730
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 p1, 0x10

    .line 731
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    :cond_4
    const/16 v1, 0x1a

    if-ne v0, v1, :cond_5

    const/16 p1, 0x14

    .line 736
    iput p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-object v3

    .line 740
    :cond_5
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 709
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 10

    .line 747
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 748
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v2, p2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    sub-int v0, v2, v0

    .line 757
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v3, v1

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x5c

    if-lez v0, :cond_4

    add-int/lit8 v7, v0, -0x1

    .line 758
    aget-char v7, v3, v7

    if-ne v7, v6, :cond_4

    add-int/lit8 v7, v0, -0x2

    move v8, v1

    :goto_1
    if-ltz v7, :cond_0

    .line 763
    aget-char v9, v3, v7

    if-ne v9, v6, :cond_0

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 769
    :cond_0
    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_1

    goto :goto_2

    .line 773
    :cond_1
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, p2, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    sub-int v6, v5, v2

    add-int/2addr v6, v0

    .line 777
    array-length v7, v3

    if-lt v6, v7, :cond_3

    .line 778
    array-length v7, v3

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    if-ge v7, v6, :cond_2

    move v7, v6

    .line 782
    :cond_2
    new-array v7, v7, [C

    .line 783
    array-length v8, v3

    invoke-static {v3, v4, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v7

    .line 786
    :cond_3
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v2, v5

    move v0, v6

    move v5, v1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez v5, :cond_9

    move p2, v4

    move v7, p2

    :goto_3
    if-ge p2, v0, :cond_6

    .line 796
    aget-char v8, v3, p2

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v7, v8

    if-ne v8, v6, :cond_5

    move v5, v1

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    if-eqz v5, :cond_7

    .line 804
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_7
    const/16 p2, 0x14

    if-ge v0, p2, :cond_8

    .line 806
    invoke-virtual {p1, v3, v4, v0, v7}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_4

    .line 809
    :cond_9
    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object p1

    :goto_4
    add-int/2addr v2, v1

    .line 812
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    .line 816
    iget p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, p2, :cond_a

    const/16 p2, 0x1a

    goto :goto_5

    :cond_a
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    .line 818
    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    :goto_5
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object p1

    .line 750
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unclosed str, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 5

    .line 948
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    .line 950
    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_4

    .line 958
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    .line 959
    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 961
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v1

    .line 963
    sget-object v2, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v2

    if-ge v1, v4, :cond_3

    .line 964
    aget-boolean v2, v2, v1

    if-nez v2, :cond_3

    .line 975
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x12

    .line 976
    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    .line 978
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const-string v3, "null"

    .line 979
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 971
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_2

    .line 952
    :cond_4
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal identifier : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected setTime(CCCCCC)V
    .locals 0

    add-int/lit8 p1, p1, -0x30

    mul-int/lit8 p1, p1, 0xa

    add-int/lit8 p2, p2, -0x30

    add-int/2addr p1, p2

    add-int/lit8 p3, p3, -0x30

    mul-int/lit8 p3, p3, 0xa

    add-int/lit8 p4, p4, -0x30

    add-int/2addr p3, p4

    add-int/lit8 p5, p5, -0x30

    mul-int/lit8 p5, p5, 0xa

    add-int/lit8 p6, p6, -0x30

    add-int/2addr p5, p6

    .line 4643
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p4, 0xb

    invoke-virtual {p2, p4, p1}, Ljava/util/Calendar;->set(II)V

    .line 4644
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 4645
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 p2, 0xd

    invoke-virtual {p1, p2, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 0

    add-int/lit8 p2, p2, -0x30

    mul-int/lit8 p2, p2, 0xa

    add-int/lit8 p3, p3, -0x30

    add-int/2addr p2, p3

    mul-int/lit16 p2, p2, 0xe10

    mul-int/lit16 p2, p2, 0x3e8

    const/16 p3, 0x2d

    if-ne p1, p3, :cond_0

    neg-int p2, p2

    .line 4654
    :cond_0
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p1

    if-eq p1, p2, :cond_1

    .line 4655
    invoke-static {p2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object p1

    .line 4656
    array-length p2, p1

    if-lez p2, :cond_1

    const/4 p2, 0x0

    .line 4657
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 4658
    iget-object p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    .line 918
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 919
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 922
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    return-void

    :cond_1
    const/16 v2, 0x2a

    if-ne v0, v2, :cond_5

    .line 928
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 930
    :cond_2
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x1a

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_3

    .line 932
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 933
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v1, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    .line 940
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    :goto_1
    return-void

    .line 943
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    .line 1270
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x2f

    if-gt v0, v1, :cond_2

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 1280
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    .line 1277
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    .line 1219
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1220
    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    .line 1221
    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method final sub_chars(II)[C
    .locals 3

    .line 1236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1238
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-object p1

    .line 1240
    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    .line 1241
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/2addr p2, p1

    invoke-virtual {v1, p1, p2, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public final token()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
