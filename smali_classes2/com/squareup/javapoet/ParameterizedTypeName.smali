.class public final Lcom/squareup/javapoet/ParameterizedTypeName;
.super Lcom/squareup/javapoet/TypeName;
.source "ParameterizedTypeName.java"


# instance fields
.field public final enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

.field public final rawType:Lcom/squareup/javapoet/ClassName;

.field public final typeArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/ParameterizedTypeName;",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/javapoet/ParameterizedTypeName;",
            "Lcom/squareup/javapoet/ClassName;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p4}, Lcom/squareup/javapoet/TypeName;-><init>(Ljava/util/List;)V

    const/4 p4, 0x0

    new-array v0, p4, [Ljava/lang/Object;

    const-string v1, "rawType == null"

    .line 3
    invoke-static {p2, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/ClassName;

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    .line 4
    iput-object p1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

    .line 5
    invoke-static {p3}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    .line 7
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    :goto_1
    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, p4

    const-string p2, "no type arguments: %s"

    invoke-static {p1, p2, p3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/javapoet/TypeName;

    .line 10
    invoke-virtual {p2}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p3, Lcom/squareup/javapoet/TypeName;->VOID:Lcom/squareup/javapoet/TypeName;

    if-eq p2, p3, :cond_2

    move p3, v0

    goto :goto_3

    :cond_2
    move p3, p4

    :goto_3
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p2, v1, p4

    const-string p2, "invalid type parameter: %s"

    invoke-static {p3, p2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static varargs get(Lcom/squareup/javapoet/ClassName;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;)V

    return-object v0
.end method

.method public static varargs get(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/squareup/javapoet/ParameterizedTypeName;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    invoke-static {p0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p0

    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->list([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/ParameterizedType;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 1

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/ParameterizedTypeName;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    .line 5
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 8
    :goto_0
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/squareup/javapoet/TypeName;->list([Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 10
    invoke-static {v1, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;->get(Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p1

    invoke-virtual {v0}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lcom/squareup/javapoet/ParameterizedTypeName;->nestedClass(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/squareup/javapoet/ParameterizedTypeName;

    invoke-direct {p1, v2, v0, p0}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method


# virtual methods
.method public annotated(Ljava/util/List;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/ParameterizedTypeName;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v2, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    iget-object v3, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    .line 3
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeName;->concatAnnotations(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic annotated(Ljava/util/List;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;->annotated(Ljava/util/List;)Lcom/squareup/javapoet/ParameterizedTypeName;

    move-result-object p1

    return-object p1
.end method

.method public emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/TypeName;->emitAnnotations(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    .line 3
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/ParameterizedTypeName;->emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1}, Lcom/squareup/javapoet/ClassName;->simpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emit(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/TypeName;->emitAnnotations(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    .line 7
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/ClassName;->emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "<"

    .line 10
    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v0, 0x1

    .line 12
    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/javapoet/TypeName;

    if-nez v0, :cond_1

    const-string v0, ", "

    .line 13
    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    .line 14
    :cond_1
    invoke-virtual {v2, p1}, Lcom/squareup/javapoet/TypeName;->emitAnnotations(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    .line 15
    invoke-virtual {v2, p1}, Lcom/squareup/javapoet/TypeName;->emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, ">"

    .line 18
    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    :cond_3
    return-object p1
.end method

.method public nestedClass(Ljava/lang/String;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name == null"

    .line 1
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1, p1}, Lcom/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public nestedClass(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/ParameterizedTypeName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/ParameterizedTypeName;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name == null"

    .line 3
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v1, p1}, Lcom/squareup/javapoet/ClassName;->nestedClass(Ljava/lang/String;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public withoutAnnotations()Lcom/squareup/javapoet/TypeName;
    .locals 5

    .line 1
    new-instance v0, Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v1, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->enclosingType:Lcom/squareup/javapoet/ParameterizedTypeName;

    iget-object v2, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->rawType:Lcom/squareup/javapoet/ClassName;

    iget-object v3, p0, Lcom/squareup/javapoet/ParameterizedTypeName;->typeArguments:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/squareup/javapoet/ParameterizedTypeName;-><init>(Lcom/squareup/javapoet/ParameterizedTypeName;Lcom/squareup/javapoet/ClassName;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
