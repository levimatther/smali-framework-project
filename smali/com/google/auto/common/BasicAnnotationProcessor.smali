.class public abstract Lcom/google/auto/common/BasicAnnotationProcessor;
.super Ljavax/annotation/processing/AbstractProcessor;
.source "BasicAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;,
        Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;
    }
.end annotation


# instance fields
.field private final deferredElementNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;",
            ">;"
        }
    .end annotation
.end field

.field private elements:Ljavax/lang/model/util/Elements;

.field private final elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap<",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;",
            ">;"
        }
    .end annotation
.end field

.field private messager:Ljavax/annotation/processing/Messager;

.field private steps:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "+",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljavax/annotation/processing/AbstractProcessor;-><init>()V

    .line 105
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    .line 107
    invoke-static {}, Lcom/google/common/collect/LinkedHashMultimap;->create()Lcom/google/common/collect/LinkedHashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;

    return-void
.end method

.method static synthetic access$000(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 103
    invoke-static {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getEnclosingType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    return-object p0
.end method

.method private deferredElements()Lcom/google/common/collect/ImmutableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;>;"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    .line 195
    invoke-virtual {v2}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->name()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {v2, v4}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->getElement(Ljavax/lang/model/util/Elements;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method private static findAnnotatedElements(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSetMultimap$Builder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/element/Element;",
            "Lcom/google/common/collect/ImmutableSet<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;",
            "Lcom/google/common/collect/ImmutableSetMultimap$Builder<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 382
    invoke-interface {p0}, Ljavax/lang/model/element/Element;->getEnclosedElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 383
    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/lang/model/element/ElementKind;->isInterface()Z

    move-result v2

    if-nez v2, :cond_0

    .line 384
    invoke-static {v1, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->findAnnotatedElements(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSetMultimap$Builder;)V

    goto :goto_0

    .line 389
    :cond_1
    instance-of v0, p0, Ljavax/lang/model/element/ExecutableElement;

    if-eqz v0, :cond_2

    .line 390
    move-object v0, p0

    check-cast v0, Ljavax/lang/model/element/ExecutableElement;

    invoke-interface {v0}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 391
    invoke-static {v1, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->findAnnotatedElements(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSetMultimap$Builder;)V

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 395
    invoke-static {p0, v0}, Lcom/google/auto/common/MoreElements;->isAnnotationPresent(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 396
    invoke-virtual {p2, v0, p0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static getEnclosingType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;
    .locals 2

    .line 408
    new-instance v0, Lcom/google/auto/common/BasicAnnotationProcessor$2;

    invoke-direct {v0}, Lcom/google/auto/common/BasicAnnotationProcessor$2;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/lang/model/element/TypeElement;

    return-object p0
.end method

.method private getSupportedAnnotationClasses()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "+",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->steps:Lcom/google/common/collect/ImmutableList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 144
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->steps:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;

    .line 146
    invoke-interface {v2}, Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;->annotations()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method private indexByAnnotation(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;",
            ">;)",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 348
    invoke-direct {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getSupportedAnnotationClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    .line 350
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v1

    .line 351
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    .line 352
    iget-object v3, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {v2, v3}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->getElement(Ljavax/lang/model/util/Elements;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 353
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 354
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/Element;

    invoke-static {v2, v0, v1}, Lcom/google/auto/common/BasicAnnotationProcessor;->findAnnotatedElements(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSetMultimap$Builder;)V

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1
.end method

.method private process(Lcom/google/common/collect/ImmutableSetMultimap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->steps:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;

    .line 322
    new-instance v2, Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    invoke-direct {v2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;-><init>()V

    iget-object v3, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;

    .line 324
    invoke-interface {v3, v1}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/auto/common/BasicAnnotationProcessor;->indexByAnnotation(Ljava/util/Set;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v2

    .line 325
    invoke-interface {v1}, Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;->annotations()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lcom/google/common/base/Predicate;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/google/common/collect/Multimaps;->filterKeys(Lcom/google/common/collect/SetMultimap;Lcom/google/common/base/Predicate;)Lcom/google/common/collect/SetMultimap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->putAll(Lcom/google/common/collect/Multimap;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSetMultimap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v2, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v2, v1}, Lcom/google/common/collect/SetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    goto :goto_0

    .line 330
    :cond_0
    invoke-interface {v1, v2}, Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;->process(Lcom/google/common/collect/SetMultimap;)Ljava/util/Set;

    move-result-object v2

    .line 331
    iget-object v3, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;

    new-instance v4, Lcom/google/auto/common/BasicAnnotationProcessor$1;

    invoke-direct {v4, p0}, Lcom/google/auto/common/BasicAnnotationProcessor$1;-><init>(Lcom/google/auto/common/BasicAnnotationProcessor;)V

    .line 333
    invoke-static {v2, v4}, Lcom/google/common/collect/Iterables;->transform(Ljava/lang/Iterable;Lcom/google/common/base/Function;)Ljava/lang/Iterable;

    move-result-object v2

    .line 331
    invoke-interface {v3, v1, v2}, Lcom/google/common/collect/SetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private processingErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const-string p1, "[%s:MiscError] %s was unable to process %s because not all of its dependencies could be resolved. Check for compilation errors or a circular dependency with generated code."

    .line 234
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private reportMissingElements(Ljava/util/Map;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/google/common/base/Optional<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;>;",
            "Ljava/util/Collection<",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;",
            ">;)V"
        }
    .end annotation

    .line 203
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 205
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableMap$Builder;->putAll(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 207
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    .line 208
    invoke-virtual {v1}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {v1, v3}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->getElement(Ljavax/lang/model/util/Elements;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 215
    :cond_2
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 216
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    .line 217
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    iget-object p2, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 219
    invoke-interface {p2}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p2

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/Element;

    invoke-interface {v3}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/lang/model/element/ElementKind;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-direct {p0, v2}, Lcom/google/auto/common/BasicAnnotationProcessor;->processingErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 224
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Element;

    .line 220
    invoke-interface {p2, v1, v2, v0}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;Ljavax/lang/model/element/Element;)V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->processingEnv:Ljavax/annotation/processing/ProcessingEnvironment;

    .line 227
    invoke-interface {v0}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object v0

    sget-object v1, Ljavax/tools/Diagnostic$Kind;->ERROR:Ljavax/tools/Diagnostic$Kind;

    .line 228
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->processingErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljavax/annotation/processing/Messager;->printMessage(Ljavax/tools/Diagnostic$Kind;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private validElements(Lcom/google/common/collect/ImmutableMap;Ljavax/annotation/processing/RoundEnvironment;)Lcom/google/common/collect/ImmutableSetMultimap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Lcom/google/common/base/Optional<",
            "+",
            "Ljavax/lang/model/element/Element;",
            ">;>;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")",
            "Lcom/google/common/collect/ImmutableSetMultimap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 253
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Optional;

    .line 255
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/lang/model/element/Element;

    .line 258
    invoke-direct {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getSupportedAnnotationClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    .line 256
    invoke-static {v1, v2, v0}, Lcom/google/auto/common/BasicAnnotationProcessor;->findAnnotatedElements(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableSet;Lcom/google/common/collect/ImmutableSetMultimap$Builder;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->forTypeName(Ljava/lang/String;)Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    .line 269
    invoke-static {}, Lcom/google/common/collect/ImmutableSetMultimap;->builder()Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 274
    invoke-direct {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getSupportedAnnotationClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 277
    iget-object v4, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v4

    if-nez v4, :cond_3

    .line 280
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v4

    goto :goto_1

    .line 281
    :cond_3
    invoke-interface {p2, v4}, Ljavax/annotation/processing/RoundEnvironment;->getElementsAnnotatedWith(Ljavax/lang/model/element/TypeElement;)Ljava/util/Set;

    move-result-object v4

    .line 283
    :goto_1
    invoke-virtual {p1, v3}, Lcom/google/common/collect/ImmutableSetMultimap;->get(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/collect/Sets;->union(Ljava/util/Set;Ljava/util/Set;)Lcom/google/common/collect/Sets$SetView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/Sets$SetView;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/lang/model/element/Element;

    .line 284
    invoke-interface {v5}, Ljavax/lang/model/element/Element;->getKind()Ljavax/lang/model/element/ElementKind;

    move-result-object v6

    sget-object v7, Ljavax/lang/model/element/ElementKind;->PACKAGE:Ljavax/lang/model/element/ElementKind;

    invoke-virtual {v6, v7}, Ljavax/lang/model/element/ElementKind;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_7

    .line 285
    check-cast v5, Ljavax/lang/model/element/PackageElement;

    .line 287
    invoke-interface {v5}, Ljavax/lang/model/element/PackageElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->forPackageName(Ljava/lang/String;)Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    move-result-object v6

    .line 289
    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    .line 290
    invoke-interface {v9, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 291
    invoke-static {v5}, Lcom/google/auto/common/SuperficialValidation;->validateElement(Ljavax/lang/model/element/Element;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    move v7, v8

    :cond_5
    if-eqz v7, :cond_6

    .line 293
    invoke-virtual {v0, v3, v5}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 294
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 296
    :cond_6
    iget-object v5, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 299
    :cond_7
    invoke-static {v5}, Lcom/google/auto/common/BasicAnnotationProcessor;->getEnclosingType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;

    move-result-object v6

    .line 301
    invoke-interface {v6}, Ljavax/lang/model/element/TypeElement;->getQualifiedName()Ljavax/lang/model/element/Name;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;->forTypeName(Ljava/lang/String;)Lcom/google/auto/common/BasicAnnotationProcessor$ElementName;

    move-result-object v9

    .line 303
    invoke-interface {v1, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    .line 304
    invoke-interface {v10, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 305
    invoke-static {v6}, Lcom/google/auto/common/SuperficialValidation;->validateElement(Ljavax/lang/model/element/Element;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v7, v8

    :cond_9
    if-eqz v7, :cond_a

    .line 307
    invoke-virtual {v0, v3, v5}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSetMultimap$Builder;

    .line 308
    invoke-interface {v1, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 310
    :cond_a
    iget-object v5, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 316
    :cond_b
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSetMultimap$Builder;->build()Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final getSupportedAnnotationTypes()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->builder()Lcom/google/common/collect/ImmutableSet$Builder;

    move-result-object v0

    .line 158
    invoke-direct {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getSupportedAnnotationClasses()Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableSet$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet$Builder;->build()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSupportedAnnotationTypes()Ljava/util/Set;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->getSupportedAnnotationTypes()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized init(Ljavax/annotation/processing/ProcessingEnvironment;)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    invoke-super {p0, p1}, Ljavax/annotation/processing/AbstractProcessor;->init(Ljavax/annotation/processing/ProcessingEnvironment;)V

    .line 116
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getElementUtils()Ljavax/lang/model/util/Elements;

    move-result-object v0

    iput-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    .line 117
    invoke-interface {p1}, Ljavax/annotation/processing/ProcessingEnvironment;->getMessager()Ljavax/annotation/processing/Messager;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    .line 118
    invoke-virtual {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->initSteps()Ljava/lang/Iterable;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->steps:Lcom/google/common/collect/ImmutableList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract initSteps()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/auto/common/BasicAnnotationProcessor$ProcessingStep;",
            ">;"
        }
    .end annotation
.end method

.method protected postProcess()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected postRound(Ljavax/annotation/processing/RoundEnvironment;)V
    .locals 0

    .line 137
    invoke-interface {p1}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result p1

    if-nez p1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->postProcess()V

    :cond_0
    return-void
.end method

.method public final process(Ljava/util/Set;Ljavax/annotation/processing/RoundEnvironment;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Ljavax/lang/model/element/TypeElement;",
            ">;",
            "Ljavax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    .line 166
    iget-object p1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elements:Ljavax/lang/model/util/Elements;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 167
    iget-object p1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->messager:Ljavax/annotation/processing/Messager;

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 168
    iget-object p1, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->steps:Lcom/google/common/collect/ImmutableList;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 170
    invoke-direct {p0}, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElements()Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    .line 172
    iget-object v0, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->deferredElementNames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 175
    invoke-interface {p2}, Ljavax/annotation/processing/RoundEnvironment;->processingOver()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    invoke-virtual {p0, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->postRound(Ljavax/annotation/processing/RoundEnvironment;)V

    .line 177
    iget-object p2, p0, Lcom/google/auto/common/BasicAnnotationProcessor;->elementsDeferredBySteps:Lcom/google/common/collect/SetMultimap;

    invoke-interface {p2}, Lcom/google/common/collect/SetMultimap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->reportMissingElements(Ljava/util/Map;Ljava/util/Collection;)V

    return v1

    .line 181
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->validElements(Lcom/google/common/collect/ImmutableMap;Ljavax/annotation/processing/RoundEnvironment;)Lcom/google/common/collect/ImmutableSetMultimap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/auto/common/BasicAnnotationProcessor;->process(Lcom/google/common/collect/ImmutableSetMultimap;)V

    .line 183
    invoke-virtual {p0, p2}, Lcom/google/auto/common/BasicAnnotationProcessor;->postRound(Ljavax/annotation/processing/RoundEnvironment;)V

    return v1
.end method
