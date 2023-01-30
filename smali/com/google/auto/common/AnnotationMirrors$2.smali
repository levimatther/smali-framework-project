.class final Lcom/google/auto/common/AnnotationMirrors$2;
.super Ljava/lang/Object;
.source "AnnotationMirrors.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/common/AnnotationMirrors;->getAnnotatedAnnotations(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Lcom/google/common/collect/ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "Ljavax/lang/model/element/AnnotationMirror;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$annotationType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/auto/common/AnnotationMirrors$2;->val$annotationType:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 147
    check-cast p1, Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {p0, p1}, Lcom/google/auto/common/AnnotationMirrors$2;->apply(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljavax/lang/model/element/AnnotationMirror;)Z
    .locals 1

    .line 149
    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/common/AnnotationMirrors$2;->val$annotationType:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/google/auto/common/MoreElements;->isAnnotationPresent(Ljavax/lang/model/element/Element;Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
