.class public final Lcom/squareup/javapoet/CodeBlock$Builder;
.super Ljava/lang/Object;
.source "CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/CodeBlock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final formatParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/javapoet/CodeBlock$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>()V

    return-void
.end method

.method private argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method private argToName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Lcom/squareup/javapoet/ParameterSpec;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/squareup/javapoet/ParameterSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/ParameterSpec;->name:Ljava/lang/String;

    return-object p1

    .line 3
    :cond_1
    instance-of v0, p1, Lcom/squareup/javapoet/FieldSpec;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/squareup/javapoet/FieldSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_2
    instance-of v0, p1, Lcom/squareup/javapoet/MethodSpec;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/squareup/javapoet/MethodSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    return-object p1

    .line 5
    :cond_3
    instance-of v0, p1, Lcom/squareup/javapoet/TypeSpec;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/squareup/javapoet/TypeSpec;

    iget-object p1, p1, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    return-object p1

    .line 6
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private argToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private argToType(Ljava/lang/Object;)Lcom/squareup/javapoet/TypeName;
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/squareup/javapoet/TypeName;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/javapoet/TypeName;

    return-object p1

    .line 2
    :cond_0
    instance-of v0, p1, Ljavax/lang/model/type/TypeMirror;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 3
    :cond_1
    instance-of v0, p1, Ljavax/lang/model/element/Element;

    if-eqz v0, :cond_2

    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    instance-of v0, p1, Ljava/lang/reflect/Type;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/reflect/Type;

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 143
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    iget-object p1, p1, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    array-length v3, v2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    const-string v10, "$"

    const/4 v12, 0x1

    if-ge v5, v9, :cond_10

    .line 4
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v13, 0x24

    if-eq v9, v13, :cond_1

    add-int/lit8 v9, v5, 0x1

    .line 5
    invoke-virtual {v1, v13, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 6
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 7
    :cond_0
    iget-object v10, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-virtual {v1, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v9

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v9, v5

    .line 18
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v9, v14, :cond_2

    move v14, v12

    goto :goto_2

    :cond_2
    move v14, v4

    :goto_2
    new-array v15, v12, [Ljava/lang/Object;

    aput-object v1, v15, v4

    const-string v11, "dangling format characters in \'%s\'"

    invoke-static {v14, v11, v15}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v11, v9, 0x1

    .line 19
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v14, 0x30

    if-lt v9, v14, :cond_4

    const/16 v14, 0x39

    if-le v9, v14, :cond_3

    goto :goto_3

    :cond_3
    move v9, v11

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v14, v11, -0x1

    if-eq v9, v13, :cond_e

    const/16 v13, 0x3e

    if-eq v9, v13, :cond_e

    const/16 v13, 0x3c

    if-eq v9, v13, :cond_e

    const/16 v13, 0x5b

    if-eq v9, v13, :cond_e

    const/16 v13, 0x5d

    if-ne v9, v13, :cond_5

    goto/16 :goto_9

    :cond_5
    if-ge v5, v14, :cond_6

    .line 33
    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sub-int/2addr v8, v12

    .line 35
    array-length v13, v2

    rem-int v13, v8, v13

    aget v15, v3, v13

    add-int/2addr v15, v12

    aput v15, v3, v13

    move v13, v12

    move/from16 v17, v8

    move v8, v7

    move/from16 v7, v17

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v7, 0x1

    move v13, v8

    move v8, v6

    move v6, v12

    :goto_4
    if-ltz v7, :cond_7

    .line 42
    array-length v15, v2

    if-ge v7, v15, :cond_7

    move v15, v12

    goto :goto_5

    :cond_7
    move v15, v4

    :goto_5
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    add-int/lit8 v16, v7, 0x1

    .line 44
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v4

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v1, v5, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x1

    aput-object v5, v12, v14

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v14, 0x2

    aput-object v5, v12, v14

    const-string v5, "index %d for \'%s\' not in range (received %s arguments)"

    .line 45
    invoke-static {v15, v5, v12}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v13, :cond_9

    if-nez v6, :cond_8

    goto :goto_6

    :cond_8
    move v5, v4

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v5, 0x1

    :goto_7
    new-array v12, v4, [Ljava/lang/Object;

    const-string v14, "cannot mix indexed and positional parameters"

    .line 48
    invoke-static {v5, v14, v12}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0x4c

    if-eq v9, v5, :cond_d

    const/16 v5, 0x4e

    if-eq v9, v5, :cond_c

    const/16 v5, 0x53

    if-eq v9, v5, :cond_b

    const/16 v5, 0x54

    if-ne v9, v5, :cond_a

    .line 61
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    aget-object v7, v2, v7

    invoke-direct {v0, v7}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToType(Ljava/lang/Object;)Lcom/squareup/javapoet/TypeName;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 64
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v1, "invalid format string: \'%s\'"

    .line 65
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_b
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    aget-object v7, v2, v7

    invoke-direct {v0, v7}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 67
    :cond_c
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    aget-object v7, v2, v7

    invoke-direct {v0, v7}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 70
    :cond_d
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    aget-object v7, v2, v7

    invoke-direct {v0, v7}, Lcom/squareup/javapoet/CodeBlock$Builder;->argToLiteral(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_8
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v8

    move v5, v11

    move v8, v13

    goto/16 :goto_0

    :cond_e
    :goto_9
    if-ne v5, v14, :cond_f

    const/4 v12, 0x1

    goto :goto_a

    :cond_f
    move v12, v4

    :goto_a
    new-array v5, v4, [Ljava/lang/Object;

    const-string v13, "$$, $>, $<, $[ and $] may not have an index"

    .line 84
    invoke-static {v12, v13, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v5, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v11

    goto/16 :goto_0

    :cond_10
    if-eqz v6, :cond_12

    .line 128
    array-length v1, v2

    if-lt v7, v1, :cond_11

    const/4 v1, 0x2

    const/4 v14, 0x1

    goto :goto_b

    :cond_11
    move v14, v4

    const/4 v1, 0x2

    :goto_b
    new-array v5, v1, [Ljava/lang/Object;

    .line 129
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v4

    array-length v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const-string v1, "unused arguments: expected %s, received %s"

    .line 130
    invoke-static {v14, v1, v5}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_12
    if-eqz v8, :cond_16

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v5, v4

    .line 135
    :goto_c
    array-length v6, v2

    if-ge v5, v6, :cond_14

    .line 136
    aget v6, v3, v5

    if-nez v6, :cond_13

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 140
    :cond_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_15

    const-string v2, ""

    goto :goto_d

    :cond_15
    const-string v2, "s"

    .line 141
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v4

    const-string v2, ", "

    invoke-static {v2, v1}, Lcom/squareup/javapoet/Util;->join(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const-string v1, "unused argument%s: %s"

    invoke-static {v5, v1, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    return-object v0
.end method

.method public varargs addStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "$["

    .line 1
    invoke-virtual {p0, v2, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, ";\n$]"

    .line 3
    invoke-virtual {p0, p2, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 2
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/CodeBlock;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/CodeBlock;-><init>(Lcom/squareup/javapoet/CodeBlock$Builder;Lcom/squareup/javapoet/CodeBlock$1;)V

    return-object v0
.end method

.method public endControlFlow()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "}\n"

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs endControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public indent()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$>"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs nextControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " {\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 3
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public unindent()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    const-string v1, "$<"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
