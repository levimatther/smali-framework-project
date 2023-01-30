.class Lcom/google/auto/common/Overrides$ExplicitOverrides;
.super Lcom/google/auto/common/Overrides;
.source "Overrides.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/Overrides;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExplicitOverrides"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;
    }
.end annotation


# instance fields
.field private final typeUtils:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Ljavax/lang/model/util/Types;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/google/auto/common/Overrides;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    return-void
.end method

.method static synthetic access$100(Lcom/google/auto/common/Overrides$ExplicitOverrides;)Ljavax/lang/model/util/Types;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/auto/common/Overrides$ExplicitOverrides;Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method private asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 409
    invoke-static {p1}, Lcom/google/auto/common/MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    .line 410
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    .line 411
    invoke-static {p1}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method private isSubsignature(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
    .locals 5

    .line 177
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    .line 180
    invoke-interface {v1, v0, p1}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/common/MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v1

    .line 181
    iget-object v2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    .line 182
    invoke-interface {v2, v0, p2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object v0

    .line 183
    iget-object v2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v1, v0}, Ljavax/lang/model/util/Types;->isSubsignature(Ljavax/lang/model/type/ExecutableType;Ljavax/lang/model/type/ExecutableType;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 189
    :catch_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 190
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 193
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 194
    invoke-virtual {p0, p2, p3}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object p2

    if-eqz p1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p3, v2

    :goto_0
    if-ge p3, v0, :cond_3

    .line 200
    iget-object v1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v1, v3, v4}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v2
.end method

.method private methodInType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 8

    .line 370
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    invoke-virtual {p0, p2, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 376
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getEnclosedElements()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljavax/lang/model/util/ElementFilter;->methodsIn(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/ExecutableElement;

    .line 377
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v4

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/element/Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 378
    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v0, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_3

    .line 380
    iget-object v5, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v3}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/lang/model/element/VariableElement;

    invoke-interface {v6}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    .line 381
    iget-object v6, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v6, v7, v5}, Ljavax/lang/model/util/Types;->isSameType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v3

    :cond_4
    return-object v2
.end method

.method private superclass(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;
    .locals 2

    .line 392
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 393
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private superinterfaces(Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/TypeElement;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 402
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

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

    .line 403
    iget-object v2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v2, v1}, Ljavax/lang/model/util/Types;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object v1

    invoke-static {v1}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;
    .locals 2
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

    .line 219
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    new-instance v0, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;-><init>(Lcom/google/auto/common/Overrides$ExplicitOverrides;Lcom/google/auto/common/Overrides$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides$TypeSubstVisitor;->erasedParameterTypes(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    return-object p1
.end method

.method methodFromSuperclasses(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 1

    :goto_0
    if-eqz p1, :cond_1

    .line 320
    invoke-direct {p0, p1, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->methodInType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->superclass(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method methodFromSuperinterfaces(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;
    .locals 5

    .line 334
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 336
    iget-object v1, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-interface {v1, v0}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 337
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    .line 342
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 343
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 344
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeElement;

    .line 345
    iget-object v3, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    .line 346
    iget-object v4, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v4, v3, v0}, Ljavax/lang/model/util/Types;->isAssignable(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-direct {p0, v2, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->methodInType(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    .line 351
    :cond_1
    invoke-direct {p0, v2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->superinterfaces(Ljavax/lang/model/element/TypeElement;)Lcom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 353
    :cond_2
    invoke-interface {v2}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-direct {p0, v2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->superclass(Ljavax/lang/model/element/TypeElement;)Ljavax/lang/model/element/TypeElement;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 360
    :cond_3
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public overrides(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z
    .locals 6

    .line 78
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/lang/model/element/Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 93
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 96
    :cond_1
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 100
    :cond_2
    invoke-static {p2}, Lcom/google/auto/common/Visibility;->ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lcom/google/auto/common/Visibility;->ofElement(Ljavax/lang/model/element/Element;)Lcom/google/auto/common/Visibility;

    move-result-object v2

    .line 102
    sget-object v3, Lcom/google/auto/common/Visibility;->PRIVATE:Lcom/google/auto/common/Visibility;

    invoke-virtual {v0, v3}, Lcom/google/auto/common/Visibility;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 103
    invoke-virtual {v2, v0}, Lcom/google/auto/common/Visibility;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    goto/16 :goto_0

    .line 109
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->isSubsignature(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/TypeElement;)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    .line 112
    :cond_4
    invoke-static {p1}, Lcom/google/auto/common/MoreElements;->getPackage(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/PackageElement;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/auto/common/MoreElements;->methodVisibleFromPackage(Ljavax/lang/model/element/ExecutableElement;Ljavax/lang/model/element/PackageElement;)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    .line 118
    :cond_5
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    instance-of v0, v0, Ljavax/lang/model/element/TypeElement;

    if-nez v0, :cond_6

    return v1

    .line 122
    :cond_6
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    .line 128
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/common/Overrides$ExplicitOverrides;->typeUtils:Ljavax/lang/model/util/Types;

    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Types;->erasure(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    .line 127
    invoke-interface {v2, v3, v4}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 131
    :cond_7
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 133
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 143
    invoke-virtual {p0, p3, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->methodFromSuperclasses(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object p1

    .line 144
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 145
    :cond_8
    invoke-interface {v0}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 158
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getModifiers()Ljava/util/Set;

    move-result-object p1

    sget-object v0, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 159
    invoke-virtual {p0, p3, p2}, Lcom/google/auto/common/Overrides$ExplicitOverrides;->methodFromSuperinterfaces(Ljavax/lang/model/element/TypeElement;Ljavax/lang/model/element/ExecutableElement;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object p1

    .line 160
    invoke-interface {p2}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p2, p1}, Ljavax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    :cond_9
    return v3

    :cond_a
    return v1

    .line 169
    :cond_b
    invoke-interface {p3}, Ljavax/lang/model/element/TypeElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result p1

    return p1

    :cond_c
    :goto_0
    return v1
.end method
