.class public Lcom/android/dialer/smartdial/SmartDialNameMatcher;
.super Ljava/lang/Object;
.source "SmartDialNameMatcher.java"


# static fields
.field private static final ALLOW_INITIAL_MATCH:Z = true

.field private static final INITIAL_LENGTH_LIMIT:I = 0x1

.field public static final LATIN_SMART_DIAL_MAP:Lcom/android/dialer/smartdial/SmartDialMap;


# instance fields
.field private final mMap:Lcom/android/dialer/smartdial/SmartDialMap;

.field private final mMatchPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/smartdial/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMatchMask:Ljava/lang/String;

.field private mPhoneNumberMatchMask:Ljava/lang/String;

.field private mQuery:Ljava/lang/String;

.field private mShouldMatchEmptyQuery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/dialer/smartdial/LatinSmartDialMap;

    invoke-direct {v0}, Lcom/android/dialer/smartdial/LatinSmartDialMap;-><init>()V

    sput-object v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/smartdial/SmartDialMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 54
    sget-object v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->LATIN_SMART_DIAL_MAP:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mShouldMatchEmptyQuery:Z

    .line 58
    iput-object p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    return-void
.end method

.method private constructEmptyMask(Ljava/lang/StringBuilder;I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    const-string v1, "0"

    .line 99
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/smartdial/SmartDialMatchPosition;
    .locals 7

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 197
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 199
    new-instance p3, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    invoke-direct {p3, p1, p2}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    return-object p3

    :cond_1
    const/4 v0, 0x0

    move v2, p3

    move v3, v2

    move v4, v0

    .line 205
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge p3, v5, :cond_6

    .line 206
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_2

    .line 209
    :cond_2
    invoke-virtual {p1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 210
    iget-object v6, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-interface {v6, v5}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 211
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-nez v4, :cond_5

    if-eqz v2, :cond_5

    add-int/lit8 v2, v2, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 233
    :cond_6
    :goto_2
    new-instance p1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    add-int/2addr v2, v0

    invoke-direct {p1, v2, v3}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    return-object p1

    .line 194
    :cond_7
    :goto_3
    iget-boolean p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mShouldMatchEmptyQuery:Z

    if-eqz p1, :cond_8

    new-instance v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    invoke-direct {v1, p3, p3}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    :cond_8
    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;ILcom/android/dialer/smartdial/SmartDialMap;)Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 82
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 83
    invoke-interface {p2, v1}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadNumericChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static normalizeNumber(Ljava/lang/String;Lcom/android/dialer/smartdial/SmartDialMap;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-static {p0, v0, p1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;ILcom/android/dialer/smartdial/SmartDialMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/smartdial/SmartDialMatchPosition;)V
    .locals 3

    .line 110
    iget v0, p2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->start:I

    :goto_0
    iget v1, p2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->end:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const-string v2, "1"

    .line 111
    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMatchPositions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/smartdial/SmartDialMatchPosition;",
            ">;"
        }
    .end annotation

    .line 420
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getNameMatchPositionsInString()Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberMatchPositionsInString()Ljava/lang/String;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 432
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    return-object v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 414
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMatchPositions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result p1

    return p1
.end method

.method matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/dialer/smartdial/SmartDialMatchPosition;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 266
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-direct {v0, v4, v5}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 268
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    .line 269
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 270
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-ge v5, v6, :cond_0

    return v7

    :cond_0
    if-nez v6, :cond_1

    return v7

    .line 296
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v9, v7

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_0
    const/4 v13, 0x1

    if-ge v9, v5, :cond_e

    if-ge v10, v6, :cond_e

    .line 299
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 301
    iget-object v15, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-interface {v15, v14}, Lcom/android/dialer/smartdial/SmartDialMap;->normalizeCharacter(C)C

    move-result v14

    .line 302
    iget-object v15, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-interface {v15, v14}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 303
    iget-object v15, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-interface {v15, v14}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadAlphabeticChar(C)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 304
    iget-object v15, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-interface {v15, v14}, Lcom/android/dialer/smartdial/SmartDialMap;->getDialpadNumericCharacter(C)C

    move-result v14

    .line 306
    :cond_2
    invoke-virtual {v2, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v14, v15, :cond_6

    if-eqz v10, :cond_3

    .line 323
    iget-object v10, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    add-int/lit8 v11, v9, -0x1

    .line 325
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/dialer/smartdial/SmartDialMap;->normalizeCharacter(C)C

    move-result v11

    .line 324
    invoke-interface {v10, v11}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_3
    :goto_1
    if-ge v9, v5, :cond_4

    .line 327
    iget-object v10, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    .line 329
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/dialer/smartdial/SmartDialMap;->normalizeCharacter(C)C

    move-result v11

    .line 328
    invoke-interface {v10, v11}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v10

    if-eqz v10, :cond_4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v9, 0x1

    :cond_5
    move v10, v7

    move v11, v10

    goto/16 :goto_5

    :cond_6
    add-int/lit8 v14, v6, -0x1

    if-ne v10, v14, :cond_8

    .line 344
    new-instance v1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    add-int/2addr v6, v12

    add-int/2addr v6, v11

    invoke-direct {v1, v12, v6}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    .line 347
    invoke-direct {v0, v4, v2}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/smartdial/SmartDialMatchPosition;)V

    goto :goto_2

    .line 349
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    return v13

    :cond_8
    if-ge v10, v13, :cond_b

    move v13, v9

    :goto_3
    if-ge v13, v5, :cond_a

    .line 358
    iget-object v14, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mMap:Lcom/android/dialer/smartdial/SmartDialMap;

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-interface {v14, v15}, Lcom/android/dialer/smartdial/SmartDialMap;->normalizeCharacter(C)C

    move-result v15

    invoke-interface {v14, v15}, Lcom/android/dialer/smartdial/SmartDialMap;->isValidDialpadCharacter(C)Z

    move-result v14

    if-nez v14, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    add-int/lit8 v14, v5, -0x1

    if-ge v13, v14, :cond_b

    add-int/lit8 v13, v13, 0x1

    .line 364
    invoke-virtual {v1, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 365
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v7, v10, 0x1

    .line 366
    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v14, v7, v15}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesCombination(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 369
    invoke-static {v15, v13}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;->advanceMatchPositions(Ljava/util/ArrayList;I)V

    .line 370
    new-instance v7, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    add-int/lit8 v8, v9, 0x1

    invoke-direct {v7, v9, v8}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    const/4 v8, 0x0

    invoke-virtual {v15, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-object v8, v15

    :cond_b
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_c
    add-int/lit8 v9, v9, 0x1

    if-nez v10, :cond_d

    :goto_5
    move v12, v9

    goto :goto_6

    :cond_d
    add-int/lit8 v11, v11, 0x1

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 401
    :cond_e
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 402
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    .line 404
    invoke-direct {v0, v4, v2}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/smartdial/SmartDialMatchPosition;)V

    goto :goto_7

    .line 406
    :cond_f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mNameMatchMask:Ljava/lang/String;

    return v13

    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public matchesNumber(Ljava/lang/String;)Lcom/android/dialer/smartdial/SmartDialMatchPosition;
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object p1

    return-object p1
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/smartdial/SmartDialMatchPosition;
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object p1

    return-object p1
.end method

.method public matchesNumber(Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/dialer/smartdial/SmartDialMatchPosition;
    .locals 4

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 128
    iget-boolean p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mShouldMatchEmptyQuery:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    invoke-direct {p1, v1, v1}, Lcom/android/dialer/smartdial/SmartDialMatchPosition;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->constructEmptyMask(Ljava/lang/StringBuilder;I)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    .line 135
    invoke-direct {p0, p1, p2, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object v1

    if-nez v1, :cond_4

    .line 137
    invoke-static {p1}, Lcom/android/dialer/smartdial/SmartDialPrefix;->parsePhoneNumber(Ljava/lang/String;)Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v1

    .line 142
    :cond_2
    iget v3, v2, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    if-eqz v3, :cond_3

    .line 143
    iget v1, v2, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->countryCodeOffset:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    .line 145
    iget v3, v2, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    .line 146
    iget p3, v2, Lcom/android/dialer/smartdial/SmartDialPrefix$PhoneNumberTokens;->nanpCodeOffset:I

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->matchesNumberWithOffset(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/dialer/smartdial/SmartDialMatchPosition;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    .line 150
    invoke-direct {p0, v0, v1}, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->replaceBitInMask(Ljava/lang/StringBuilder;Lcom/android/dialer/smartdial/SmartDialMatchPosition;)V

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mPhoneNumberMatchMask:Ljava/lang/String;

    :cond_5
    return-object v1
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mQuery:Ljava/lang/String;

    return-void
.end method

.method public setShouldMatchEmptyQuery(Z)V
    .locals 0

    .line 440
    iput-boolean p1, p0, Lcom/android/dialer/smartdial/SmartDialNameMatcher;->mShouldMatchEmptyQuery:Z

    return-void
.end method
