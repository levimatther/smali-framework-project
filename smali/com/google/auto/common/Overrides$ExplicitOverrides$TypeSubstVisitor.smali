.class Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "Overrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/Overrides$ExplicitOverrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TypeSubstVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6<",
        "Ljavax/lang/model/type/TypeMirror;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

.field private final typeBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljavax/lang/model/element/TypeParameterElement;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/auto/common/Overrides$ExplicitOverrides;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    .line 242
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->typeBindings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/auto/common/Overrides$ExplicitOverrides;Lcom/google/auto/common/Overrides$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;-><init>(Lcom/google/auto/common/Overrides$ExplicitOverrides;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    return-object p1
.end method

.method erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/ExecutableElement;",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0, p2}, Ljavax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p2

    .line 247
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    .line 248
    iget-object v1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {v1}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;

    move-result-object v1

    invoke-interface {v0}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 254
    :cond_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 255
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v1, v2, :cond_2

    .line 256
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_2
    invoke-interface {p2}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 259
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 260
    invoke-static {v0}, Lcom/google/auto/common/MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 261
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    .line 262
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    .line 263
    invoke-interface {v1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    .line 264
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/common/base/Verify;->verify(Z)V

    .line 265
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_5

    .line 266
    iget-object v3, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->typeBindings:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 268
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    if-eqz v0, :cond_3

    return-object v0

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 309
    iget-object p2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p2, p1}, Ljavax/lang/model/util/Types;->getArrayType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 2

    .line 297
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 300
    :cond_0
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    .line 301
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 302
    invoke-virtual {p0, v1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {v0}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;

    move-result-object v0

    iget-object v1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {v1, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$200(Lcom/google/auto/common/Overrides$ExplicitOverrides;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->getDeclaredType(Ljavax/lang/model/element/TypeElement;[Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 235
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Void;)Ljavax/lang/model/type/TypeMirror;
    .locals 1

    .line 283
    iget-object p2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;

    move-result-object p2

    invoke-interface {p2, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p2

    .line 284
    instance-of v0, p2, Ljavax/lang/model/element/TypeParameterElement;

    if-eqz v0, :cond_0

    .line 285
    check-cast p2, Ljavax/lang/model/element/TypeParameterElement;

    .line 286
    iget-object v0, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->typeBindings:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object p1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->typeBindings:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    return-object p1

    .line 292
    :cond_0
    iget-object p2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->this$0:Lcom/google/auto/common/Overrides$ExplicitOverrides;

    invoke-static {p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getUpperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->visit(Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    return-object p1
.end method
