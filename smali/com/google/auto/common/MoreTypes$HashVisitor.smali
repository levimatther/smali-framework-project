.class final Lcom/google/auto/common/MoreTypes$HashVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HashVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6<",
        "Ljava/lang/Integer;",
        "Ljava/util/Set<",
        "Ljavax/lang/model/element/Element;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$HashVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 385
    new-instance v0, Lcom/google/auto/common/MoreTypes$HashVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$HashVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$HashVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$HashVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 384
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    return-void
.end method

.method static synthetic access$800()Lcom/google/auto/common/MoreTypes$HashVisitor;
    .locals 1

    .line 384
    sget-object v0, Lcom/google/auto/common/MoreTypes$HashVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$HashVisitor;

    return-object v0
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/16 p2, 0x11

    .line 395
    invoke-virtual {p0, p2, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method hashKind(ILjavax/lang/model/type/TypeMirror;)I
    .locals 0

    mul-int/lit8 p1, p1, 0x1f

    .line 389
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/lang/model/type/TypeKind;->hashCode()I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ArrayType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 400
    invoke-virtual {p0, v0, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 402
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v0, p1

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/DeclaredType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 408
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 409
    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 412
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 413
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p2, 0x11

    .line 414
    invoke-virtual {p0, p2, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result p2

    mul-int/lit8 p2, p2, 0x1f

    .line 416
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/element/Element;->hashCode()I

    move-result v0

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x1f

    .line 418
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x1f

    .line 420
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/auto/common/MoreTypes;->access$700(Ljava/util/List;Ljava/util/Set;)I

    move-result p1

    add-int/2addr p2, p1

    .line 421
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/ExecutableType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 426
    invoke-virtual {p0, v0, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 428
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/auto/common/MoreTypes;->access$700(Ljava/util/List;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 430
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 432
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/google/auto/common/MoreTypes;->access$700(Ljava/util/List;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 434
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->access$700(Ljava/util/List;Ljava/util/Set;)I

    move-result p1

    add-int/2addr v0, p1

    .line 435
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeVariable;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 440
    invoke-virtual {p0, v0, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 442
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    .line 443
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeParameterElement;

    .line 444
    invoke-interface {p1}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    mul-int/lit8 v0, v0, 0x1f

    .line 446
    invoke-interface {v1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 448
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 463
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/util/Set;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/WildcardType;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    const/16 v0, 0x11

    .line 453
    invoke-virtual {p0, v0, p1}, Lcom/google/auto/common/MoreTypes$HashVisitor;->hashKind(ILjavax/lang/model/type/TypeMirror;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 455
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-interface {v1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 457
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 458
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 384
    check-cast p2, Ljava/util/Set;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$HashVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/util/Set;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
