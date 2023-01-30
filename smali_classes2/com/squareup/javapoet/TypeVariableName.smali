.class public final Lcom/squareup/javapoet/TypeVariableName;
.super Lcom/squareup/javapoet/TypeName;
.source "TypeVariableName.java"


# instance fields
.field public final bounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p3}, Lcom/squareup/javapoet/TypeName;-><init>(Ljava/util/List;)V

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    const-string v1, "name == null"

    .line 3
    invoke-static {p1, v1, v0}, Lcom/squareup/javapoet/Util;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/squareup/javapoet/TypeVariableName;->bounds:Ljava/util/List;

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/squareup/javapoet/TypeName;

    .line 7
    invoke-virtual {p2}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/squareup/javapoet/TypeName;->VOID:Lcom/squareup/javapoet/TypeName;

    if-eq p2, v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    move v0, p3

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, p3

    const-string p2, "invalid bound: %s"

    invoke-static {v0, p2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/squareup/javapoet/TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/squareup/javapoet/TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(Ljava/lang/String;[Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->list([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/squareup/javapoet/TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/reflect/TypeVariable;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {p0, v0}, Lcom/squareup/javapoet/TypeVariableName;->get(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/reflect/TypeVariable;Ljava/util/Map;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 28
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeVariableName;

    if-nez v0, :cond_1

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 32
    new-instance v2, Lcom/squareup/javapoet/TypeVariableName;

    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 33
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    array-length v1, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 35
    invoke-static {v4, p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    :cond_0
    sget-object p0, Lcom/squareup/javapoet/TypeName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public static get(Ljavax/lang/model/element/TypeParameterElement;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 3

    .line 18
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p0

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 23
    invoke-static {v2}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;)Lcom/squareup/javapoet/TypeName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_0
    invoke-static {v0, v1}, Lcom/squareup/javapoet/TypeVariableName;->of(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljavax/lang/model/type/TypeVariable;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 0

    .line 4
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeParameterElement;

    invoke-static {p0}, Lcom/squareup/javapoet/TypeVariableName;->get(Ljavax/lang/model/element/TypeParameterElement;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljavax/lang/model/type/TypeVariable;Ljava/util/Map;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 5
    invoke-interface {p0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeParameterElement;

    .line 6
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeVariableName;

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 12
    new-instance v2, Lcom/squareup/javapoet/TypeVariableName;

    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {p0}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 15
    invoke-static {v1, p1}, Lcom/squareup/javapoet/TypeName;->get(Ljavax/lang/model/type/TypeMirror;Ljava/util/Map;)Lcom/squareup/javapoet/TypeName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_0
    sget-object p0, Lcom/squareup/javapoet/TypeName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v0, v2

    :cond_1
    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    sget-object p1, Lcom/squareup/javapoet/TypeName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Lcom/squareup/javapoet/TypeVariableName;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic annotated(Ljava/util/List;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeVariableName;->annotated(Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public annotated(Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/squareup/javapoet/TypeVariableName;

    iget-object v1, p0, Lcom/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeVariableName;->bounds:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public emit(Lcom/squareup/javapoet/CodeWriter;)Lcom/squareup/javapoet/CodeWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/squareup/javapoet/CodeWriter;->emitAndIndent(Ljava/lang/String;)Lcom/squareup/javapoet/CodeWriter;

    move-result-object p1

    return-object p1
.end method

.method public withBounds(Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeVariableName;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/squareup/javapoet/TypeVariableName;->bounds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    new-instance p1, Lcom/squareup/javapoet/TypeVariableName;

    iget-object v1, p0, Lcom/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeName;->annotations:Ljava/util/List;

    invoke-direct {p1, v1, v0, v2}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object p1
.end method

.method public varargs withBounds([Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 0

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeVariableName;->withBounds(Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public varargs withBounds([Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeVariableName;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->list([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeVariableName;->withBounds(Ljava/util/List;)Lcom/squareup/javapoet/TypeVariableName;

    move-result-object p1

    return-object p1
.end method

.method public withoutAnnotations()Lcom/squareup/javapoet/TypeName;
    .locals 3

    .line 1
    new-instance v0, Lcom/squareup/javapoet/TypeVariableName;

    iget-object v1, p0, Lcom/squareup/javapoet/TypeVariableName;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeVariableName;->bounds:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/squareup/javapoet/TypeVariableName;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method
