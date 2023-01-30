.class public Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;
.super Ljava/lang/Object;
.source "AddressListParserTokenManager.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/AddressListParserConstants;


# static fields
.field static commentNest:I

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
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field private image:Ljava/lang/StringBuilder;

.field protected input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

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
    .locals 36

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 204
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 645
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnextStates:[I

    const-string v2, ""

    const-string v3, "\r"

    const-string v4, "\n"

    const-string v5, ","

    const-string v6, ":"

    const-string v7, ";"

    const-string v8, "<"

    const-string v9, ">"

    const-string v10, "@"

    const-string v11, "."

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

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    .line 649
    filled-new-array/range {v2 .. v35}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    const-string v1, "DEFAULT"

    const-string v2, "INDOMAINLITERAL"

    const-string v3, "INCOMMENT"

    const-string v4, "NESTED_COMMENT"

    const-string v5, "INQUOTEDSTRING"

    .line 655
    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v1, v1, [I

    .line 664
    fill-array-data v1, :array_1

    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    const/4 v1, 0x1

    new-array v2, v1, [J

    const-wide v3, 0x800443ffL

    aput-wide v3, v2, v0

    .line 668
    sput-object v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoToken:[J

    new-array v2, v1, [J

    const-wide/32 v3, 0x100400

    aput-wide v3, v2, v0

    .line 671
    sput-object v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSkip:[J

    new-array v2, v1, [J

    const-wide/16 v3, 0x400

    aput-wide v3, v2, v0

    .line 674
    sput-object v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSpecial:[J

    new-array v1, v1, [J

    const-wide/32 v2, 0x7feb8000

    aput-wide v2, v1, v0

    .line 677
    sput-object v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoMore:[J

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
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1
        -0x1
        -0x1
        0x0
        0x2
        0x0
        -0x1
        0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V
    .locals 1

    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 681
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 682
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    .line 684
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 757
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 758
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->defaultLexState:I

    .line 692
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;I)V
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    .line 698
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private ReInitRounds()V
    .locals 3

    const v0, -0x7fffffff

    .line 712
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    const/4 v0, 0x3

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 714
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private jjAddStates(II)V
    .locals 3

    .line 960
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnextStates:[I

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

    .line 951
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 953
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 954
    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method private jjCheckNAddTwoStates(II)V
    .locals 0

    .line 965
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    .line 966
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private jjMoveNfa_0(II)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 90
    iput v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 92
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move/from16 v4, p2

    move v6, v1

    move v7, v2

    move v5, v3

    .line 96
    :goto_0
    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    add-int/2addr v8, v3

    iput v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-ne v8, v1, :cond_0

    .line 97
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 98
    :cond_0
    iget-char v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const-wide/16 v12, 0x0

    const/4 v14, 0x2

    const/16 v15, 0xe

    if-ge v8, v9, :cond_c

    shl-long v16, v10, v8

    .line 103
    :cond_1
    iget-object v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const-wide v9, 0x100000200L

    const/16 v11, 0xa

    if-eqz v8, :cond_9

    if-eq v8, v3, :cond_5

    if-eq v8, v14, :cond_2

    goto :goto_1

    :cond_2
    const-wide v8, -0x5c00130600000000L

    and-long v8, v16, v8

    cmp-long v8, v8, v12

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    if-le v6, v15, :cond_4

    move v6, v15

    .line 130
    :cond_4
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_5
    const-wide v18, -0x5c00530600000000L

    and-long v18, v16, v18

    cmp-long v8, v18, v12

    if-eqz v8, :cond_7

    if-le v6, v15, :cond_6

    move v6, v15

    .line 110
    :cond_6
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_7
    and-long v8, v16, v9

    cmp-long v8, v8, v12

    if-eqz v8, :cond_b

    if-le v6, v11, :cond_8

    move v6, v11

    .line 116
    :cond_8
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_1

    :cond_9
    and-long v8, v16, v9

    cmp-long v8, v8, v12

    if-nez v8, :cond_a

    goto :goto_1

    .line 123
    :cond_a
    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    move v6, v11

    :cond_b
    :goto_1
    if-ne v5, v7, :cond_1

    goto :goto_3

    :cond_c
    const/16 v9, 0x80

    if-ge v8, v9, :cond_11

    and-int/lit8 v8, v8, 0x3f

    shl-long v8, v10, v8

    .line 141
    :cond_d
    iget-object v10, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v10, v10, v5

    if-eq v10, v3, :cond_e

    if-eq v10, v14, :cond_e

    goto :goto_2

    :cond_e
    const-wide v10, 0x7fffffffc7fffffeL

    and-long/2addr v10, v8

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    goto :goto_2

    :cond_f
    if-le v6, v15, :cond_10

    move v6, v15

    .line 149
    :cond_10
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    :goto_2
    if-ne v5, v7, :cond_d

    goto :goto_3

    .line 161
    :cond_11
    iget-object v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    if-ne v5, v7, :cond_11

    :goto_3
    if-eq v6, v1, :cond_12

    .line 169
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 170
    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_12
    add-int/lit8 v4, v4, 0x1

    .line 174
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v7, v7, 0x3

    if-ne v5, v7, :cond_13

    return v4

    .line 176
    :cond_13
    :try_start_0
    iget-object v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v8}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v8

    iput-char v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v4
.end method

.method private jjMoveNfa_1(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 557
    iput v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 559
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 563
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 564
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 565
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x10

    const/16 v10, 0x11

    if-ge v7, v8, :cond_5

    .line 570
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    goto/16 :goto_5

    :cond_5
    const/16 v8, 0x80

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    if-ge v7, v8, :cond_c

    and-int/lit8 v7, v7, 0x3f

    shl-long v15, v11, v7

    .line 589
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v7, v5

    const-wide/32 v11, -0x38000001

    if-eqz v8, :cond_9

    if-eq v8, v3, :cond_8

    const/4 v7, 0x2

    if-eq v8, v7, :cond_7

    goto :goto_3

    :cond_7
    and-long v7, v15, v11

    cmp-long v7, v7, v13

    if-eqz v7, :cond_b

    if-le v6, v10, :cond_b

    goto :goto_2

    :cond_8
    if-le v6, v9, :cond_b

    move v6, v9

    goto :goto_3

    :cond_9
    and-long/2addr v11, v15

    cmp-long v8, v11, v13

    if-eqz v8, :cond_a

    if-le v6, v10, :cond_b

    :goto_2
    move v6, v10

    goto :goto_3

    .line 597
    :cond_a
    iget-char v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v11, 0x5c

    if-ne v8, v11, :cond_b

    .line 598
    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    aput v3, v7, v8

    :cond_b
    :goto_3
    if-ne v5, v4, :cond_6

    goto :goto_5

    :cond_c
    and-int/lit16 v8, v7, 0xff

    shr-int/lit8 v8, v8, 0x6

    and-int/lit8 v7, v7, 0x3f

    shl-long/2addr v11, v7

    .line 618
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_4

    .line 625
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_4

    .line 621
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v10, :cond_10

    move v6, v10

    :cond_10
    :goto_4
    if-ne v5, v4, :cond_d

    :goto_5
    if-eq v6, v1, :cond_11

    .line 634
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 635
    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 639
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 641
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
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

    .line 210
    iput v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 212
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 216
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 217
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 218
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x15

    const/16 v10, 0x17

    if-ge v7, v8, :cond_5

    .line 223
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 242
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 247
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 248
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

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

    .line 268
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 275
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 271
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

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

    .line 284
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 285
    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 289
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 291
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveNfa_3(II)I
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 447
    iput v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 449
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 453
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 454
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 455
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const/16 v9, 0x18

    const/16 v10, 0x1b

    if-ge v7, v8, :cond_5

    .line 460
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 479
    :cond_6
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 484
    :cond_a
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x5c

    if-ne v7, v8, :cond_b

    .line 485
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

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

    .line 505
    :cond_d
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    const-wide/16 v13, 0x0

    if-eqz v7, :cond_f

    if-eq v7, v3, :cond_e

    goto :goto_3

    .line 512
    :cond_e
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v15, v7, v8

    and-long/2addr v15, v11

    cmp-long v7, v15, v13

    if-eqz v7, :cond_10

    if-le v6, v9, :cond_10

    move v6, v9

    goto :goto_3

    .line 508
    :cond_f
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

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

    .line 521
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 522
    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_11
    add-int/lit8 v2, v2, 0x1

    .line 526
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_12

    return v2

    .line 528
    :cond_12
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveNfa_4(II)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x3

    .line 320
    iput v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    .line 322
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move v6, v1

    move v4, v2

    move v5, v3

    move/from16 v2, p2

    .line 326
    :goto_0
    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjround:I

    if-ne v7, v1, :cond_0

    .line 327
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    .line 328
    :cond_0
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v8, 0x40

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const/16 v13, 0x1d

    const/4 v14, 0x2

    const/16 v15, 0x1e

    if-ge v7, v8, :cond_7

    shl-long v16, v9, v7

    .line 333
    :cond_1
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 341
    :cond_5
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    :cond_6
    :goto_1
    if-ne v5, v4, :cond_1

    goto/16 :goto_4

    :cond_7
    const/16 v8, 0x80

    if-ge v7, v8, :cond_11

    and-int/lit8 v7, v7, 0x3f

    shl-long v16, v9, v7

    .line 356
    :cond_8
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

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

    .line 377
    :cond_b
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

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

    .line 363
    :cond_e
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2

    .line 365
    :cond_f
    iget-char v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_10

    .line 366
    iget v8, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

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

    .line 389
    :cond_12
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstateSet:[I

    add-int/lit8 v5, v5, -0x1

    aget v7, v7, v5

    if-eqz v7, :cond_14

    if-eq v7, v3, :cond_13

    if-eq v7, v14, :cond_14

    goto :goto_3

    .line 400
    :cond_13
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-eqz v7, :cond_17

    if-le v6, v13, :cond_17

    move v6, v13

    goto :goto_3

    .line 393
    :cond_14
    sget-object v7, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjbitVec0:[J

    aget-wide v16, v7, v8

    and-long v16, v16, v9

    cmp-long v7, v16, v11

    if-nez v7, :cond_15

    goto :goto_3

    :cond_15
    if-le v6, v15, :cond_16

    move v6, v15

    .line 397
    :cond_16
    invoke-direct {v0, v14}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjCheckNAdd(I)V

    :cond_17
    :goto_3
    if-ne v5, v4, :cond_12

    :goto_4
    if-eq v6, v1, :cond_18

    .line 409
    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 410
    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    move v6, v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    .line 414
    iget v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v4, v4, 0x3

    if-ne v5, v4, :cond_19

    return v2

    .line 416
    :cond_19
    :try_start_0
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return v2
.end method

.method private jjMoveStringLiteralDfa0_0()I
    .locals 4

    .line 57
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    const/16 v1, 0xd

    const/4 v3, 0x1

    if-eq v0, v1, :cond_7

    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x28

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_4

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-direct {p0, v3, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x6

    .line 76
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_1
    const/4 v0, 0x5

    .line 74
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_2
    const/4 v0, 0x4

    .line 72
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xf

    .line 82
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x8

    .line 80
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x7

    .line 78
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_3
    const/16 v0, 0x9

    .line 70
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_4
    const/4 v0, 0x3

    .line 68
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_5
    const/16 v0, 0x13

    .line 66
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_6
    const/16 v0, 0x1c

    .line 64
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 62
    :cond_7
    invoke-direct {p0, v2, v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_8
    const/4 v0, 0x2

    .line 60
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private jjMoveStringLiteralDfa0_1()I
    .locals 3

    .line 546
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/4 v1, 0x0

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_0

    .line 551
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x12

    .line 549
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_2()I
    .locals 3

    .line 194
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 201
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    .line 199
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x16

    .line 197
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_3()I
    .locals 3

    .line 434
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v1, 0x28

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    .line 441
    invoke-direct {p0, v2, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1a

    .line 439
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x19

    .line 437
    invoke-direct {p0, v2, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private jjMoveStringLiteralDfa0_4()I
    .locals 3

    .line 309
    iget-char v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/4 v1, 0x0

    const/16 v2, 0x22

    if-eq v0, v2, :cond_0

    .line 314
    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x1f

    .line 312
    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_0(IJ)I
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_0(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_1(IJ)I
    .locals 0

    .line 542
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_1(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_2(IJ)I
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_2(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_3(IJ)I
    .locals 0

    .line 430
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_3(II)I

    move-result p1

    return p1
.end method

.method private final jjStartNfa_4(IJ)I
    .locals 0

    .line 305
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjStopStringLiteralDfa_4(IJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveNfa_4(II)I

    move-result p1

    return p1
.end method

.method private jjStopAtPos(II)I
    .locals 0

    .line 51
    iput p2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 52
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

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

.method private final jjStopStringLiteralDfa_4(IJ)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method MoreLexicalActions()V
    .locals 6

    .line 886
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 887
    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x15

    if-eq v1, v3, :cond_3

    const/16 v3, 0x16

    if-eq v1, v3, :cond_2

    const/16 v3, 0x1c

    if-eq v1, v3, :cond_1

    const/16 v3, 0x1d

    if-eq v1, v3, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 915
    :pswitch_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 916
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 917
    sget v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    sub-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_0

    .line 910
    :pswitch_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 911
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 912
    sget v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    add-int/2addr v0, v2

    sput v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    goto/16 :goto_0

    .line 905
    :pswitch_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 906
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 907
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 925
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 926
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 927
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 920
    :cond_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 921
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 922
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 900
    :cond_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v3, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 901
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 902
    sput v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->commentNest:I

    goto :goto_0

    .line 895
    :cond_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 896
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 897
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 890
    :cond_4
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 891
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 892
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 704
    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 705
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 706
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 707
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/SimpleCharStream;I)V
    .locals 0

    .line 720
    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    .line 721
    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .locals 3

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 730
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    return-void

    .line 728
    :cond_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/TokenMgrError;

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

    invoke-direct {v0, p1, v1}, Lorg/apache/james/mime4j/field/address/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/address/Token;)V
    .locals 4

    .line 935
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 942
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 943
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    goto :goto_0

    .line 938
    :cond_1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 939
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/address/Token;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    .line 776
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 785
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimage:Ljava/lang/StringBuilder;

    iput-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->image:Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 787
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjimageLen:I

    .line 791
    :goto_1
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    const v7, 0x7fffffff

    const/4 v8, 0x1

    if-eqz v6, :cond_5

    if-eq v6, v8, :cond_4

    const/4 v9, 0x2

    if-eq v6, v9, :cond_3

    const/4 v9, 0x3

    if-eq v6, v9, :cond_2

    const/4 v9, 0x4

    if-eq v6, v9, :cond_1

    goto :goto_2

    .line 814
    :cond_1
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 815
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 816
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_4()I

    move-result v5

    goto :goto_2

    .line 809
    :cond_2
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 810
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 811
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v5

    goto :goto_2

    .line 804
    :cond_3
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 805
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 806
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v5

    goto :goto_2

    .line 799
    :cond_4
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 800
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 801
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v5

    goto :goto_2

    .line 794
    :cond_5
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 795
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    .line 796
    invoke-direct/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v5

    .line 819
    :goto_2
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    if-eq v6, v7, :cond_d

    .line 821
    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v9, v6, 0x1

    if-ge v9, v5, :cond_6

    .line 822
    iget-object v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v8

    invoke-virtual {v9, v6}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V

    .line 823
    :cond_6
    sget-object v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoToken:[J

    iget v9, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v10, v9, 0x6

    aget-wide v10, v6, v10

    and-int/lit8 v6, v9, 0x3f

    const-wide/16 v12, 0x1

    shl-long v14, v12, v6

    and-long/2addr v10, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v10, v14

    const/4 v10, -0x1

    if-eqz v6, :cond_8

    .line 825
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v1

    .line 826
    iput-object v4, v1, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 827
    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/address/Token;)V

    .line 828
    sget-object v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    aget v4, v2, v3

    if-eq v4, v10, :cond_7

    .line 829
    aget v2, v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    :cond_7
    return-object v1

    .line 832
    :cond_8
    sget-object v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSkip:[J

    shr-int/lit8 v11, v9, 0x6

    aget-wide v16, v6, v11

    and-int/lit8 v6, v9, 0x3f

    shl-long v18, v12, v6

    and-long v16, v16, v18

    cmp-long v6, v16, v14

    if-eqz v6, :cond_b

    .line 834
    sget-object v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v7, v9, 0x6

    aget-wide v7, v6, v7

    and-int/lit8 v6, v9, 0x3f

    shl-long v11, v12, v6

    and-long v6, v7, v11

    cmp-long v6, v6, v14

    if-eqz v6, :cond_a

    .line 836
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v6

    if-nez v4, :cond_9

    goto :goto_3

    .line 841
    :cond_9
    iput-object v4, v6, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 842
    iput-object v6, v4, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    :goto_3
    move-object v4, v6

    .line 845
    :cond_a
    sget-object v6, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    aget v8, v6, v7

    if-eq v8, v10, :cond_0

    .line 846
    aget v6, v6, v7

    iput v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    goto/16 :goto_0

    .line 849
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->MoreLexicalActions()V

    .line 850
    sget-object v5, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjnewLexState:[I

    iget v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    aget v9, v5, v6

    if-eq v9, v10, :cond_c

    .line 851
    aget v5, v5, v6

    iput v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    .line 853
    :cond_c
    iput v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 855
    :try_start_1
    iget-object v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v3

    goto/16 :goto_1

    :catch_0
    move v5, v3

    .line 860
    :cond_d
    iget-object v4, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getEndLine()I

    move-result v4

    .line 861
    iget-object v6, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v6}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getEndColumn()I

    move-result v6

    .line 864
    :try_start_2
    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v7, v8}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v10, v3

    move v12, v4

    move v13, v6

    goto :goto_7

    :catch_1
    if-gt v5, v8, :cond_e

    move-object v2, v1

    goto :goto_4

    .line 867
    :cond_e
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    .line 868
    :goto_4
    iget-char v7, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v9, 0xa

    if-eq v7, v9, :cond_10

    const/16 v9, 0xd

    if-ne v7, v9, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v3, v6, 0x1

    goto :goto_6

    :cond_10
    :goto_5
    add-int/lit8 v4, v4, 0x1

    :goto_6
    move v13, v3

    move v12, v4

    move v10, v8

    :goto_7
    if-nez v10, :cond_12

    .line 876
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v8}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->backup(I)V

    if-gt v5, v8, :cond_11

    goto :goto_8

    .line 877
    :cond_11
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v14, v1

    goto :goto_9

    :cond_12
    move-object v14, v2

    .line 879
    :goto_9
    new-instance v1, Lorg/apache/james/mime4j/field/address/TokenMgrError;

    iget v11, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curLexState:I

    iget-char v15, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->curChar:C

    const/16 v16, 0x0

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Lorg/apache/james/mime4j/field/address/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    .line 780
    :catch_2
    iput v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    .line 781
    invoke-virtual/range {p0 .. p0}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v1

    .line 782
    iput-object v4, v1, Lorg/apache/james/mime4j/field/address/Token;->specialToken:Lorg/apache/james/mime4j/field/address/Token;

    return-object v1
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/address/Token;
    .locals 6

    .line 741
    sget-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    .line 743
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getBeginLine()I

    move-result v1

    .line 744
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getBeginColumn()I

    move-result v2

    .line 745
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getEndLine()I

    move-result v3

    .line 746
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->getEndColumn()I

    move-result v4

    .line 747
    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->jjmatchedKind:I

    invoke-static {v5, v0}, Lorg/apache/james/mime4j/field/address/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v0

    .line 749
    iput v1, v0, Lorg/apache/james/mime4j/field/address/Token;->beginLine:I

    .line 750
    iput v3, v0, Lorg/apache/james/mime4j/field/address/Token;->endLine:I

    .line 751
    iput v2, v0, Lorg/apache/james/mime4j/field/address/Token;->beginColumn:I

    .line 752
    iput v4, v0, Lorg/apache/james/mime4j/field/address/Token;->endColumn:I

    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
