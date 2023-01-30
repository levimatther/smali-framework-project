.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;
.source "ContentLanguageParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

.field private final jjimage:Ljava/lang/StringBuilder;

.field private jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field private lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 225
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 553
    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    const-string v2, ""

    const-string v3, ","

    const-string v4, "-"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "."

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 557
    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const-string v1, "DEFAULT"

    const-string v2, "INCOMMENT"

    const-string v3, "NESTED_COMMENT"

    const-string v4, "INQUOTEDSTRING"

    .line 562
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v1, 0x17

    new-array v1, v1, [I

    .line 570
    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide/32 v3, 0x1f0007

    aput-wide v3, v2, v0

    .line 573
    sput-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    new-array v2, v1, [J

    const-wide/16 v3, 0x28

    aput-wide v3, v2, v0

    .line 576
    sput-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    new-array v2, v1, [J

    const-wide/16 v3, 0x8

    aput-wide v3, v2, v0

    .line 579
    sput-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    new-array v1, v1, [J

    const-wide/32 v2, 0xffd0

    aput-wide v2, v1, v0

    .line 582
    sput-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        -0x1
        0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 1

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 586
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 587
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 589
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 662
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 663
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    .line 597
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 603
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 617
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const/4 v0, 0x4

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 619
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3

    .line 851
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private jjCheckNAdd(I)V
    .locals 5

    .line 842
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 844
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 845
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    .line 856
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    .line 857
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x4

    .line 78
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 80
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v5, p2

    move v7, v2

    move v8, v3

    move v6, v4

    .line 84
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v9, v4

    iput v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v9, v2, :cond_0

    .line 85
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 86
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v10, 0x40

    const-wide/16 v11, 0x1

    const/16 v13, 0x13

    const-wide/16 v14, 0x0

    const/4 v2, 0x3

    if-ge v9, v10, :cond_11

    shl-long v16, v11, v9

    .line 91
    :cond_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v10, 0x100002600L    # 2.122000597E-314

    if-eqz v9, :cond_e

    const-wide/high16 v18, 0x3ff000000000000L

    const/16 v12, 0x11

    if-eq v9, v4, :cond_b

    if-eq v9, v2, :cond_8

    if-eq v9, v1, :cond_2

    goto :goto_3

    :cond_2
    and-long v18, v16, v18

    cmp-long v9, v18, v14

    if-eqz v9, :cond_4

    if-le v7, v13, :cond_3

    move v7, v13

    .line 98
    :cond_3
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_4
    and-long v10, v16, v10

    cmp-long v10, v10, v14

    if-eqz v10, :cond_6

    if-le v7, v2, :cond_5

    move v7, v2

    .line 104
    :cond_5
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-eqz v9, :cond_10

    if-le v7, v12, :cond_7

    goto :goto_2

    :cond_7
    move v12, v7

    .line 110
    :goto_2
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v12

    goto :goto_3

    :cond_8
    and-long v9, v16, v18

    cmp-long v9, v9, v14

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    if-le v7, v13, :cond_a

    move v7, v13

    .line 131
    :cond_a
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_b
    and-long v9, v16, v18

    cmp-long v9, v9, v14

    if-nez v9, :cond_c

    goto :goto_3

    :cond_c
    if-le v7, v12, :cond_d

    move v7, v12

    .line 124
    :cond_d
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_3

    :cond_e
    and-long v9, v16, v10

    cmp-long v9, v9, v14

    if-nez v9, :cond_f

    goto :goto_3

    .line 117
    :cond_f
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v2

    :cond_10
    :goto_3
    if-ne v6, v8, :cond_1

    goto/16 :goto_7

    :cond_11
    const/16 v10, 0x80

    if-ge v9, v10, :cond_1e

    and-int/lit8 v9, v9, 0x3f

    shl-long v9, v11, v9

    .line 142
    :goto_4
    iget-object v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v11, v11, v6

    const-wide v16, 0x7fffffe07fffffeL

    const/4 v12, 0x2

    const/16 v3, 0x12

    if-eq v11, v12, :cond_19

    if-eq v11, v2, :cond_16

    if-eq v11, v1, :cond_12

    goto :goto_6

    :cond_12
    and-long v16, v9, v16

    cmp-long v11, v16, v14

    if-eqz v11, :cond_14

    if-le v7, v13, :cond_13

    move v7, v13

    .line 149
    :cond_13
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_14
    if-eqz v11, :cond_1c

    if-le v7, v3, :cond_15

    goto :goto_5

    :cond_15
    move v3, v7

    .line 155
    :goto_5
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v7, v3

    goto :goto_6

    :cond_16
    and-long v11, v9, v16

    cmp-long v3, v11, v14

    if-nez v3, :cond_17

    goto :goto_6

    :cond_17
    if-le v7, v13, :cond_18

    move v7, v13

    .line 170
    :cond_18
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_6

    :cond_19
    and-long v16, v9, v16

    cmp-long v11, v16, v14

    if-nez v11, :cond_1a

    goto :goto_6

    :cond_1a
    if-le v7, v3, :cond_1b

    move v7, v3

    .line 163
    :cond_1b
    invoke-direct {v0, v12}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_1c
    :goto_6
    if-ne v6, v8, :cond_1d

    goto :goto_7

    :cond_1d
    const/4 v3, 0x0

    goto :goto_4

    .line 182
    :cond_1e
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-ne v6, v8, :cond_1e

    :goto_7
    const v2, 0x7fffffff

    if-eq v7, v2, :cond_1f

    .line 190
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 191
    iput v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v7, v2

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    .line 195
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x4

    if-ne v6, v8, :cond_20

    return v5

    .line 197
    :cond_20
    :try_start_0
    iget-object v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private jjMoveNfa_1(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 231
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 233
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 237
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 238
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 239
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-ge v7, v8, :cond_5

    .line 244
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    move v6, v9

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    move v6, v10

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 263
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_9

    if-eq v7, v3, :cond_8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    move v6, v10

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    move v6, v9

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    move v6, v10

    .line 268
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 269
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput v3, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/2addr v8, v9

    const-wide/16 v11, 0x1

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v11, v7

    .line 289
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 296
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 292
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    move v6, v10

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v1, :cond_11

    .line 305
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 306
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 310
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 312
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveNfa_2(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 468
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 470
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 474
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 475
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 476
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x9

    const/16 v10, 0xc

    if-ge v7, v8, :cond_5

    .line 481
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    goto :goto_1

    :cond_2
    if-le v6, v9, :cond_4

    move v6, v9

    goto :goto_1

    :cond_3
    if-le v6, v10, :cond_4

    move v6, v10

    :cond_4
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_5
    const/16 v8, 0x80

    if-ge v7, v8, :cond_c

    .line 500
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_9

    if-eq v7, v3, :cond_8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_7

    goto :goto_2

    :cond_7
    if-le v6, v10, :cond_b

    move v6, v10

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    move v6, v9

    goto :goto_2

    :cond_9
    if-le v6, v10, :cond_a

    move v6, v10

    .line 505
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 506
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput v3, v7, v8

    :cond_b
    :goto_2
    if-ne v5, v4, :cond_6

    goto :goto_4

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    const-wide/16 v11, 0x1

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v11, v7

    .line 526
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 533
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 529
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    move v6, v10

    :cond_10
    :goto_3
    if-ne v5, v4, :cond_d

    :goto_4
    if-eq v6, v1, :cond_11

    .line 542
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 543
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 547
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 549
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveNfa_3(II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 341
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    .line 343
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 347
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 348
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    .line 349
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x2

    const/16 v15, 0xf

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 354
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    if-eq v7, v14, :cond_3

    goto :goto_1

    :cond_2
    if-le v6, v13, :cond_6

    move v6, v13

    goto :goto_1

    :cond_3
    const-wide v7, -0x400000001L

    and-long v7, v16, v7

    cmp-long v7, v7, v11

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    if-le v6, v15, :cond_5

    move v6, v15

    .line 362
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 377
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const-wide/32 v9, -0x10000001

    if-eqz v8, :cond_d

    if-eq v8, v3, :cond_c

    if-eq v8, v14, :cond_9

    goto :goto_2

    :cond_9
    and-long v7, v16, v9

    cmp-long v7, v7, v11

    if-nez v7, :cond_a

    goto :goto_2

    :cond_a
    if-le v6, v15, :cond_b

    move v6, v15

    .line 398
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    :cond_c
    if-le v6, v13, :cond_10

    move v6, v13

    goto :goto_2

    :cond_d
    and-long v8, v16, v9

    cmp-long v8, v8, v11

    if-eqz v8, :cond_f

    if-le v6, v15, :cond_e

    move v6, v15

    .line 384
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 386
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 387
    iget v8, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput v3, v7, v8

    :cond_10
    :goto_2
    if-ne v5, v4, :cond_8

    goto :goto_4

    :cond_11
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v9, v7

    .line 410
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v3, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 421
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    move v6, v13

    goto :goto_3

    .line 414
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    move v6, v15

    .line 418
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v1, :cond_18

    .line 430
    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 431
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 435
    iget v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 437
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 4

    .line 59
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x22

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x28

    const/4 v3, 0x4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 72
    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_0
    const/16 v0, 0x14

    .line 70
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x2

    .line 68
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const/4 v0, 0x1

    .line 66
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 64
    :cond_0
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xd

    .line 62
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 215
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 222
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 220
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x7

    .line 218
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 455
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 462
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    .line 460
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    .line 458
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 330
    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    .line 335
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x10

    .line 333
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 211
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 451
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 326
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0

    .line 53
    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 54
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 5

    .line 786
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 787
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 820
    :pswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 821
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 822
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 815
    :pswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 816
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 817
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 810
    :pswitch_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 811
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 812
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    .line 805
    :pswitch_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 806
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 807
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 800
    :pswitch_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 801
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 802
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 795
    :pswitch_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 796
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 797
    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_0

    .line 790
    :pswitch_7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 791
    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 792
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 609
    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 610
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 611
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    .line 612
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .locals 0

    .line 625
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    .line 626
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 635
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    return-void

    .line 633
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V
    .locals 4

    .line 830
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 834
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 681
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 690
    iget-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 691
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 692
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    .line 696
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 714
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 715
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 716
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    .line 709
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 710
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 711
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    goto :goto_2

    .line 704
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 705
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 706
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_2

    .line 699
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 700
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    .line 701
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 719
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    if-eq v6, v7, :cond_c

    .line 721
    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_5

    .line 722
    iget-object v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    .line 723
    :cond_5
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v10, v9, 0x6

    aget-wide v10, v6, v10

    and-int/lit8 v6, v9, 0x3f

    const-wide/16 v12, 0x1

    shl-long v14, v12, v6

    and-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    const/4 v10, -0x1

    if-eqz v6, :cond_7

    .line 725
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    .line 726
    iput-object v4, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 727
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V

    .line 728
    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v4, v2, v3

    if-eq v4, v10, :cond_6

    .line 729
    aget v2, v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    :cond_6
    return-object v1

    .line 732
    :cond_7
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v6, v11

    and-int/lit8 v6, v9, 0x3f

    shl-long v18, v12, v6

    and-long v16, v16, v18

    cmp-long v6, v16, v14

    if-eqz v6, :cond_a

    .line 734
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v7, v9, 0x6

    aget-wide v7, v6, v7

    and-int/lit8 v6, v9, 0x3f

    shl-long v11, v12, v6

    and-long v6, v7, v11

    cmp-long v6, v6, v14

    if-eqz v6, :cond_9

    .line 736
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v6

    if-nez v4, :cond_8

    goto :goto_3

    .line 741
    :cond_8
    iput-object v4, v6, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    .line 742
    iput-object v6, v4, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_3
    move-object v4, v6

    .line 745
    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v8, v6, v7

    if-eq v8, v10, :cond_0

    .line 746
    aget v6, v6, v7

    iput v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 749
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    .line 750
    sget-object v5, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v9, v5, v6

    if-eq v9, v10, :cond_b

    .line 751
    aget v5, v5, v6

    iput v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    .line 753
    :cond_b
    iput v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 755
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    .line 760
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 761
    iget-object v6, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 764
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v10, v3

    move v12, v4

    move v13, v6

    goto :goto_7

    :catch_1
    if-gt v5, v8, :cond_d

    move-object v2, v1

    goto :goto_4

    .line 767
    :cond_d
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 768
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-eq v7, v9, :cond_f

    const/16 v9, 0xd

    if-ne v7, v9, :cond_e

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v6, 0x1

    goto :goto_6

    :cond_f
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v13, v3

    move v12, v4

    move v10, v8

    :goto_7
    if-nez v10, :cond_11

    .line 776
    iget-object v2, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v8, :cond_10

    goto :goto_8

    .line 777
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v14, v1

    goto :goto_9

    :cond_11
    move-object v14, v2

    .line 779
    :goto_9
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 685
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    .line 686
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    .line 687
    iput-object v4, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .locals 6

    .line 646
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 647
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 649
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    .line 650
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 651
    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 652
    iget v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lorg/apache/james/mime4j/field/language/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    .line 654
    iput v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->beginLine:I

    .line 655
    iput v3, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->endLine:I

    .line 656
    iput v2, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->beginColumn:I

    .line 657
    iput v4, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
