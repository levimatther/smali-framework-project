.class final Lcom/google/auto/common/AnnotationMirrors$1;
.super Lcom/google/common/base/Equivalence;
.source "AnnotationMirrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/AnnotationMirrors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Equivalence<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 45
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    check-cast p2, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationMirrors$1;->doEquivalent(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p1

    return p1
.end method

.method protected doEquivalent(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 3

    .line 48
    invoke-static {}, Lcom/google/auto/common/MoreTypes;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    .line 49
    invoke-interface {p2}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/google/auto/common/AnnotationValues;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Equivalence;->pairwise()Lcom/google/common/base/Equivalence;

    move-result-object v0

    .line 50
    invoke-static {p1}, Lcom/google/auto/common/AnnotationMirrors;->getAnnotationValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p1

    .line 51
    invoke-static {p2}, Lcom/google/auto/common/AnnotationMirrors;->getAnnotationValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p2

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 0

    .line 45
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1}, Lcom/google/auto/common/AnnotationMirrors$1;->doHash(Ljavax/lang/model/element/AnnotationMirror;)I

    move-result p1

    return p1
.end method

.method protected doHash(Ljavax/lang/model/element/AnnotationMirror;)I
    .locals 3

    .line 55
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/google/auto/common/AnnotationMirrors;->getAnnotationValuesWithDefaults(Ljavax/lang/model/element/AnnotationMirror;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 58
    invoke-static {}, Lcom/google/auto/common/MoreTypes;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 59
    invoke-static {}, Lcom/google/auto/common/AnnotationValues;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Equivalence;->pairwise()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    aput p1, v1, v0

    .line 58
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result p1

    return p1
.end method
