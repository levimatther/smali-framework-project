.class public final Lcom/google/auto/common/MoreTypes;
.super Ljava/lang/Object;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$IsTypeOf;,
        Lcom/google/auto/common/MoreTypes$IsTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$WildcardTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$TypeVariableVisitor;,
        Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$NullTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$NoTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$ErrorTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$DeclaredTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;,
        Lcom/google/auto/common/MoreTypes$AsElementVisitor;,
        Lcom/google/auto/common/MoreTypes$ReferencedTypes;,
        Lcom/google/auto/common/MoreTypes$HashVisitor;,
        Lcom/google/auto/common/MoreTypes$EqualVisitor;,
        Lcom/google/auto/common/MoreTypes$ComparedElements;,
        Lcom/google/auto/common/MoreTypes$EqualVisitorParam;,
        Lcom/google/auto/common/MoreTypes$TypeEquivalence;
    }
.end annotation


# static fields
.field private static final GET_BOUNDS:Ljava/lang/reflect/Method;

.field private static final HASH_MULTIPLIER:I = 0x1f

.field private static final HASH_SEED:I = 0x11

.field private static final INTERSECTION_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "javax.lang.model.type.IntersectionType"

    .line 281
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBounds"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    .line 282
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 287
    :goto_0
    sput-object v0, Lcom/google/auto/common/MoreTypes;->INTERSECTION_TYPE:Ljava/lang/Class;

    .line 288
    sput-object v1, Lcom/google/auto/common/MoreTypes;->GET_BOUNDS:Ljava/lang/reflect/Method;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/MoreTypes;->equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/google/auto/common/MoreTypes;->hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/google/auto/common/MoreTypes;->enclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 0

    .line 68
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/MoreTypes;->equalLists(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Ljava/util/List;Ljava/util/Set;)I
    .locals 0

    .line 68
    invoke-static {p0, p1}, Lcom/google/auto/common/MoreTypes;->hashList(Ljava/util/List;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public static asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;
    .locals 2

    .line 587
    invoke-static {}, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;->access$1100()Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ArrayType;

    return-object p0
.end method

.method public static asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;
    .locals 2

    .line 608
    invoke-static {}, Lcom/google/auto/common/MoreTypes$DeclaredTypeVisitor;->access$1200()Lcom/google/auto/common/MoreTypes$DeclaredTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/DeclaredType;

    return-object p0
.end method

.method public static asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;
    .locals 2

    .line 541
    invoke-static {}, Lcom/google/auto/common/MoreTypes$AsElementVisitor;->access$1000()Lcom/google/auto/common/MoreTypes$AsElementVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/Element;

    return-object p0
.end method

.method public static asError(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ErrorType;
    .locals 2

    .line 629
    invoke-static {}, Lcom/google/auto/common/MoreTypes$ErrorTypeVisitor;->access$1300()Lcom/google/auto/common/MoreTypes$ErrorTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ErrorType;

    return-object p0
.end method

.method public static asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;
    .locals 2

    .line 650
    invoke-static {}, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;->access$1400()Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/ExecutableType;

    return-object p0
.end method

.method public static asMemberOf(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/VariableElement;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 927
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/element/ElementKind;->PARAMETER:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 929
    invoke-interface {p2}, Ljavax/lang/model/element/VariableElement;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/MoreElements;->asExecutable(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/ExecutableElement;

    move-result-object v0

    .line 931
    invoke-interface {p0, p1, v0}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/common/MoreTypes;->asExecutable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p0

    .line 932
    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    .line 933
    invoke-interface {p0}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object p0

    .line 934
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 935
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 939
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/VariableElement;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 943
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find variable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 945
    :cond_3
    invoke-interface {p0, p1, p2}, Ljavax/lang/model/util/Types;->asMemberOf(Ljavax/lang/model/type/DeclaredType;Ljavax/lang/model/element/Element;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p0

    return-object p0
.end method

.method public static asNoType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/NoType;
    .locals 2

    .line 671
    invoke-static {}, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;->access$1500()Lcom/google/auto/common/MoreTypes$NoTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/NoType;

    return-object p0
.end method

.method public static asNullType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/NullType;
    .locals 2

    .line 692
    invoke-static {}, Lcom/google/auto/common/MoreTypes$NullTypeVisitor;->access$1600()Lcom/google/auto/common/MoreTypes$NullTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/NullType;

    return-object p0
.end method

.method public static asPrimitiveType(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/PrimitiveType;
    .locals 2

    .line 713
    invoke-static {}, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;->access$1700()Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/PrimitiveType;

    return-object p0
.end method

.method public static asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 570
    invoke-static {p0}, Lcom/google/auto/common/MoreTypes;->asElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/common/MoreElements;->asType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method public static asTypeElements(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 574
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 576
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 577
    invoke-static {v1}, Lcom/google/auto/common/MoreTypes;->asTypeElement(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/element/TypeElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method

.method public static asTypeVariable(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/TypeVariable;
    .locals 2

    .line 738
    invoke-static {}, Lcom/google/auto/common/MoreTypes$TypeVariableVisitor;->access$1800()Lcom/google/auto/common/MoreTypes$TypeVariableVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeVariable;

    return-object p0
.end method

.method public static asWildcard(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/WildcardType;
    .locals 2

    .line 759
    invoke-static {}, Lcom/google/auto/common/MoreTypes$WildcardTypeVisitor;->access$1900()Lcom/google/auto/common/MoreTypes$WildcardTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/WildcardType;

    return-object p0
.end method

.method private static enclosingType(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;
    .locals 3

    .line 323
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->getEnclosingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 324
    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v1

    sget-object v2, Ljavax/lang/model/type/TypeKind;->NONE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v1, v2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 325
    invoke-interface {p0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p0

    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p0

    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;)Z"
        }
    .end annotation

    .line 299
    invoke-static {p0, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljavax/lang/model/type/ExecutableType;

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    new-instance v0, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;-><init>(Lcom/google/auto/common/MoreTypes$1;)V

    .line 303
    iput-object p1, v0, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    .line 304
    iput-object p2, v0, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    .line 305
    sget-object v2, Lcom/google/auto/common/MoreTypes;->INTERSECTION_TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 306
    invoke-static {p0}, Lcom/google/auto/common/MoreTypes;->isIntersectionType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 307
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/MoreTypes;->equalIntersectionTypes(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p0

    return p0

    .line 308
    :cond_1
    invoke-static {p1}, Lcom/google/auto/common/MoreTypes;->isIntersectionType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v3

    :cond_2
    if-eq p0, p1, :cond_4

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 312
    invoke-static {}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->access$600()Lcom/google/auto/common/MoreTypes$EqualVisitor;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    return v1
.end method

.method private static equalIntersectionTypes(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;)Z"
        }
    .end annotation

    .line 345
    invoke-static {p1}, Lcom/google/auto/common/MoreTypes;->isIntersectionType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 351
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/auto/common/MoreTypes;->GET_BOUNDS:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 352
    sget-object v0, Lcom/google/auto/common/MoreTypes;->GET_BOUNDS:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/MoreTypes;->equalLists(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 354
    invoke-static {p0}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static equalLists(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;)Z"
        }
    .end annotation

    .line 361
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 362
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 366
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 367
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 368
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 369
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 372
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 373
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    .line 374
    invoke-static {v0, v1, p2}, Lcom/google/auto/common/MoreTypes;->equal(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 378
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static equivalence()Lcom/google/common/base/Equivalence;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Equivalence<",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-static {}, Lcom/google/auto/common/MoreTypes$TypeEquivalence;->access$200()Lcom/google/auto/common/MoreTypes$TypeEquivalence;

    move-result-object v0

    return-object v0
.end method

.method private static hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)I"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {}, Lcom/google/auto/common/MoreTypes$HashVisitor;->access$800()Lcom/google/auto/common/MoreTypes$HashVisitor;

    move-result-object v0

    invoke-interface {p0, v0, p1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    return p0
.end method

.method private static hashList(Ljava/util/List;Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Element;",
            ">;)I"
        }
    .end annotation

    .line 469
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/16 v0, 0x11

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/type/TypeMirror;

    mul-int/lit8 v0, v0, 0x1f

    .line 471
    invoke-static {v1, p1}, Lcom/google/auto/common/MoreTypes;->hash(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static isIntersectionType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 332
    invoke-interface {p0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/lang/model/type/TypeKind;->name()Ljava/lang/String;

    move-result-object p0

    const-string v0, "INTERSECTION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 781
    invoke-static {}, Lcom/google/auto/common/MoreTypes$IsTypeVisitor;->access$2000()Lcom/google/auto/common/MoreTypes$IsTypeVisitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")Z"
        }
    .end annotation

    .line 819
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    new-instance v0, Lcom/google/auto/common/MoreTypes$IsTypeOf;

    invoke-direct {v0, p0}, Lcom/google/auto/common/MoreTypes$IsTypeOf;-><init>(Ljava/lang/Class;)V

    const/4 p0, 0x0

    invoke-interface {p1, v0, p0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static nonObjectSuperclass(Ljavax/lang/model/util/Types;Ljavax/lang/model/util/Elements;Ljavax/lang/model/type/DeclaredType;)Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Types;",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/type/DeclaredType;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Ljavax/lang/model/type/DeclaredType;",
            ">;"
        }
    .end annotation

    .line 890
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    const-class v0, Ljava/lang/Object;

    .line 895
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    .line 900
    invoke-interface {p0, p2}, Ljavax/lang/model/util/Types;->directSupertypes(Ljavax/lang/model/type/TypeMirror;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/collect/FluentIterable;->from(Ljava/lang/Iterable;)Lcom/google/common/collect/FluentIterable;

    move-result-object p2

    new-instance v0, Lcom/google/auto/common/MoreTypes$1;

    invoke-direct {v0, p0, p1}, Lcom/google/auto/common/MoreTypes$1;-><init>(Ljavax/lang/model/util/Types;Ljavax/lang/model/type/TypeMirror;)V

    .line 901
    invoke-virtual {p2, v0}, Lcom/google/common/collect/FluentIterable;->filter(Lcom/google/common/base/Predicate;)Lcom/google/common/collect/FluentIterable;

    move-result-object p0

    const/4 p1, 0x0

    .line 899
    invoke-static {p0, p1}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/type/TypeMirror;

    if-eqz p0, :cond_0

    .line 914
    invoke-static {p0}, Lcom/google/auto/common/MoreTypes;->asDeclared(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/DeclaredType;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p0

    goto :goto_0

    .line 915
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static referencedTypes(Ljavax/lang/model/type/TypeMirror;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 485
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 487
    invoke-static {}, Lcom/google/auto/common/MoreTypes$ReferencedTypes;->access$900()Lcom/google/auto/common/MoreTypes$ReferencedTypes;

    move-result-object v1

    invoke-interface {p0, v1, v0}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object p0

    return-object p0
.end method
