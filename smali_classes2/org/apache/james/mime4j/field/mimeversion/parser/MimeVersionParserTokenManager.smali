.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;
.super Ljava/lang/Object;
.source "MimeVersionParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


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

.field protected input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

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
    .locals 23

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 189
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 517
    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

    const-string v2, ""

    const-string v3, "\r"

    const-string v4, "\n"

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

    const-string v20, "."

    const/16 v21, 0x0

    const/16 v22, 0x0

    .line 521
    filled-new-array/range {v2 .. v22}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const-string v1, "DEFAULT"

    const-string v2, "INCOMMENT"

    const-string v3, "NESTED_COMMENT"

    const-string v4, "INQUOTEDSTRING"

    .line 526
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v1, 0x15

    new-array v1, v1, [I

    .line 534
    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide/32 v3, 0x70007

    aput-wide v3, v2, v0

    .line 537
    sput-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    new-array v2, v1, [J

    const-wide/16 v3, 0x28

    aput-wide v3, v2, v0

    .line 540
    sput-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    new-array v2, v1, [J

    const-wide/16 v3, 0x8

    aput-wide v3, v2, v0

    .line 543
    sput-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    new-array v1, v1, [J

    const-wide/32 v2, 0xffd0

    aput-wide v2, v1, v0

    .line 546
    sput-object v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoMore:[J

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
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 1

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 550
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 551
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 553
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 626
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 627
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    .line 561
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 567
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 581
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 583
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3

    .line 815
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnextStates:[I

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

    .line 806
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 808
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 809
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    .line 820
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    .line 821
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 84
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 86
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v5, p2

    move v7, v2

    move v8, v3

    move v6, v4

    .line 90
    :goto_0
    iget v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v9, v4

    iput v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v9, v2, :cond_0

    .line 91
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 92
    :cond_0
    iget-char v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v10, 0x40

    if-ge v9, v10, :cond_b

    const-wide/16 v10, 0x1

    shl-long/2addr v10, v9

    .line 97
    :cond_1
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    const-wide v12, 0x100002600L    # 2.122000597E-314

    const/16 v14, 0x11

    const/4 v15, 0x3

    const-wide/16 v16, 0x0

    if-eqz v9, :cond_8

    const-wide/high16 v18, 0x3ff000000000000L

    if-eq v9, v4, :cond_6

    if-eq v9, v1, :cond_2

    goto :goto_1

    :cond_2
    and-long v18, v10, v18

    cmp-long v9, v18, v16

    if-eqz v9, :cond_4

    if-le v7, v14, :cond_3

    move v7, v14

    .line 104
    :cond_3
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_4
    and-long/2addr v12, v10

    cmp-long v9, v12, v16

    if-eqz v9, :cond_a

    if-le v7, v15, :cond_5

    move v7, v15

    .line 110
    :cond_5
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_6
    and-long v12, v10, v18

    cmp-long v9, v12, v16

    if-nez v9, :cond_7

    goto :goto_1

    .line 123
    :cond_7
    invoke-direct {v0, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    move v7, v14

    goto :goto_1

    :cond_8
    and-long/2addr v12, v10

    cmp-long v9, v12, v16

    if-nez v9, :cond_9

    goto :goto_1

    .line 117
    :cond_9
    invoke-direct {v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    move v7, v15

    :cond_a
    :goto_1
    if-ne v6, v8, :cond_1

    goto :goto_2

    :cond_b
    const/16 v10, 0x80

    if-ge v9, v10, :cond_d

    .line 134
    :cond_c
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-ne v6, v8, :cond_c

    goto :goto_2

    .line 146
    :cond_d
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v9, v6

    if-ne v6, v8, :cond_d

    :goto_2
    if-eq v7, v2, :cond_e

    .line 154
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 155
    iput v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v7, v2

    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 159
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v8, v8, 0x2

    if-ne v6, v8, :cond_f

    return v5

    .line 161
    :cond_f
    :try_start_0
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v9}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v9

    iput-char v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v5
.end method

.method private jjMoveNfa_1(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 195
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 197
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 201
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 202
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 203
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/4 v9, 0x6

    const/16 v10, 0x8

    if-ge v7, v8, :cond_5

    .line 208
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 227
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 232
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 233
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

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

    .line 253
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 260
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 256
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

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

    .line 269
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 270
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 274
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 276
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
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

    .line 432
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 434
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 438
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 439
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 440
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x9

    const/16 v10, 0xc

    if-ge v7, v8, :cond_5

    .line 445
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 464
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 469
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 470
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

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

    .line 490
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 497
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 493
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

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

    .line 506
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 507
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 511
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 513
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
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

    .line 305
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    .line 307
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 311
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 312
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    .line 313
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0xe

    const/4 v14, 0x2

    const/16 v15, 0xf

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 318
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 326
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 341
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

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

    .line 362
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

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

    .line 348
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 350
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 351
    iget v8, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

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

    .line 374
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v3, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 385
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    move v6, v13

    goto :goto_3

    .line 378
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    move v6, v15

    .line 382
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjCheckNAdd(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v1, :cond_18

    .line 394
    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 395
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 399
    iget v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 401
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 5

    .line 57
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0xa

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v4, 0x22

    if-eq v0, v4, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    .line 70
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    .line 68
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x4

    .line 66
    invoke-direct {p0, v3, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 64
    :cond_2
    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, v3, v0, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 60
    :cond_4
    invoke-direct {p0, v3, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 179
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 186
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 184
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x7

    .line 182
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 419
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 426
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xb

    .line 424
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0xa

    .line 422
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 294
    iget-char v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    .line 299
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x10

    .line 297
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjStartNfaWithStates_0(III)I
    .locals 0

    .line 75
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 76
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 77
    :try_start_0
    iget-object p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    .line 79
    invoke-direct {p0, p3, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 175
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 415
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 290
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0

    .line 51
    iput p2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 52
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

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

    .line 750
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 751
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 784
    :pswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 785
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 786
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 779
    :pswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 780
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 781
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 774
    :pswitch_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 775
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 776
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    goto :goto_0

    .line 769
    :pswitch_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 770
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 771
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 764
    :pswitch_5
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 765
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 766
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 759
    :pswitch_6
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 760
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 761
    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->commentNest:I

    goto :goto_0

    .line 754
    :pswitch_7
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 755
    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 756
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

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

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 574
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 575
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    .line 576
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;I)V
    .locals 0

    .line 589
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    .line 590
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 599
    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    return-void

    .line 597
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

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

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V
    .locals 4

    .line 794
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 798
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 645
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 654
    iget-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 656
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjimageLen:I

    .line 660
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    if-eq v6, v8, :cond_3

    const/4 v9, 0x2

    if-eq v6, v9, :cond_2

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 678
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 679
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 680
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    .line 673
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 674
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 675
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    goto :goto_2

    .line 668
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 669
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 670
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_2

    .line 663
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 664
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    .line 665
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 683
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    if-eq v6, v7, :cond_c

    .line 685
    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_5

    .line 686
    iget-object v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    .line 687
    :cond_5
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoToken:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

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

    .line 689
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 690
    iput-object v4, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 691
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;)V

    .line 692
    sget-object v2, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v4, v2, v3

    if-eq v4, v10, :cond_6

    .line 693
    aget v2, v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    :cond_6
    return-object v1

    .line 696
    :cond_7
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v6, v11

    and-int/lit8 v6, v9, 0x3f

    shl-long v18, v12, v6

    and-long v16, v16, v18

    cmp-long v6, v16, v14

    if-eqz v6, :cond_a

    .line 698
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v7, v9, 0x6

    aget-wide v7, v6, v7

    and-int/lit8 v6, v9, 0x3f

    shl-long v11, v12, v6

    and-long v6, v7, v11

    cmp-long v6, v6, v14

    if-eqz v6, :cond_9

    .line 700
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v6

    if-nez v4, :cond_8

    goto :goto_3

    .line 705
    :cond_8
    iput-object v4, v6, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    .line 706
    iput-object v6, v4, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_3
    move-object v4, v6

    .line 709
    :cond_9
    sget-object v6, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v8, v6, v7

    if-eq v8, v10, :cond_0

    .line 710
    aget v6, v6, v7

    iput v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 713
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->MoreLexicalActions()V

    .line 714
    sget-object v5, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget v9, v5, v6

    if-eq v9, v10, :cond_b

    .line 715
    aget v5, v5, v6

    iput v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    .line 717
    :cond_b
    iput v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 719
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    .line 724
    :cond_c
    iget-object v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 725
    iget-object v6, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 728
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V
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

    .line 731
    :cond_d
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 732
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

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

    .line 740
    iget-object v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v8, :cond_10

    goto :goto_8

    .line 741
    :cond_10
    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v14, v1

    goto :goto_9

    :cond_11
    move-object v14, v2

    .line 743
    :goto_9
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curLexState:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->curChar:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/mimeversion/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 649
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    .line 650
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    .line 651
    iput-object v4, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .locals 6

    .line 610
    sget-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .line 612
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 613
    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    .line 614
    iget-object v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 615
    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 616
    iget v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v0

    .line 618
    iput v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginLine:I

    .line 619
    iput v3, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endLine:I

    .line 620
    iput v2, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->beginColumn:I

    .line 621
    iput v4, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
