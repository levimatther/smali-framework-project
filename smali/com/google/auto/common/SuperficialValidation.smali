.class public final Lcom/google/auto/common/SuperficialValidation;
.super Ljava/lang/Object;
.source "SuperficialValidation.java"


# static fields
.field private static final ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/element/ElementVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/type/TypeVisitor<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/lang/model/element/AnnotationValueVisitor<",
            "Ljava/lang/Boolean;",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    new-instance v0, Lcom/google/auto/common/SuperficialValidation$1;

    invoke-direct {v0}, Lcom/google/auto/common/SuperficialValidation$1;-><init>()V

    sput-object v0, Lcom/google/auto/common/SuperficialValidation;->ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;

    .line 121
    new-instance v0, Lcom/google/auto/common/SuperficialValidation$2;

    invoke-direct {v0}, Lcom/google/auto/common/SuperficialValidation$2;-><init>()V

    sput-object v0, Lcom/google/auto/common/SuperficialValidation;->TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    .line 198
    new-instance v0, Lcom/google/auto/common/SuperficialValidation$3;

    invoke-direct {v0}, Lcom/google/auto/common/SuperficialValidation$3;-><init>()V

    sput-object v0, Lcom/google/auto/common/SuperficialValidation;->VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Iterable;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotations(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Ljavax/lang/model/element/Element;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->isValidBaseElement(Ljavax/lang/model/element/Element;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Ljava/lang/Iterable;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateTypes(Ljava/lang/Iterable;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 0

    .line 48
    invoke-static {p0, p1}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 0

    .line 48
    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p0

    return p0
.end method

.method private static isValidBaseElement(Ljavax/lang/model/element/Element;)Z
    .locals 1

    .line 102
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getAnnotationMirrors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotations(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 181
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-interface {p0}, Ljavax/lang/model/element/AnnotationMirror;->getElementValues()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotationValues(Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 281
    sget-object v0, Lcom/google/auto/common/SuperficialValidation;->VALUE_VALIDATING_VISITOR:Ljavax/lang/model/element/AnnotationValueVisitor;

    invoke-interface {p0, v0, p1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static validateAnnotationValues(Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljavax/lang/model/element/ExecutableElement;",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;)Z"
        }
    .end annotation

    .line 189
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    invoke-static {v0, v1}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotationValue(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static validateAnnotations(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/AnnotationMirror;",
            ">;)Z"
        }
    .end annotation

    .line 172
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationMirror;

    .line 173
    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateAnnotation(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static validateElement(Ljavax/lang/model/element/Element;)Z
    .locals 2

    .line 98
    sget-object v0, Lcom/google/auto/common/SuperficialValidation;->ELEMENT_VALIDATING_VISITOR:Ljavax/lang/model/element/ElementVisitor;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static validateElements(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 51
    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateElement(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static validateType(Ljavax/lang/model/type/TypeMirror;)Z
    .locals 2

    .line 167
    sget-object v0, Lcom/google/auto/common/SuperficialValidation;->TYPE_VALIDATING_VISITOR:Ljavax/lang/model/type/TypeVisitor;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/type/TypeMirror;->accept(Ljavax/lang/model/type/TypeVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static validateTypes(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)Z"
        }
    .end annotation

    .line 108
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/type/TypeMirror;

    .line 109
    invoke-static {v0}, Lcom/google/auto/common/SuperficialValidation;->validateType(Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
