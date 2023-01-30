.class Lcom/google/auto/common/AnnotationValues$1$1;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
.source "AnnotationValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/common/AnnotationValues$1;->doEquivalent(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/element/AnnotationValue;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6<",
        "Ljava/lang/Boolean;",
        "Ljavax/lang/model/element/AnnotationValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/auto/common/AnnotationValues$1;


# direct methods
.method constructor <init>(Lcom/google/auto/common/AnnotationValues$1;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/auto/common/AnnotationValues$1$1;->this$0:Lcom/google/auto/common/AnnotationValues$1;

    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
    .locals 2

    .line 37
    new-instance v0, Lcom/google/auto/common/AnnotationValues$1$1$1;

    invoke-direct {v0, p0}, Lcom/google/auto/common/AnnotationValues$1$1$1;-><init>(Lcom/google/auto/common/AnnotationValues$1$1;)V

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationValues$1$1;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
    .locals 1

    .line 48
    new-instance v0, Lcom/google/auto/common/AnnotationValues$1$1$2;

    invoke-direct {v0, p0}, Lcom/google/auto/common/AnnotationValues$1$1$2;-><init>(Lcom/google/auto/common/AnnotationValues$1$1;)V

    invoke-interface {p2, v0, p1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationValues$1$1;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljavax/lang/model/element/AnnotationValue;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/google/auto/common/AnnotationValues$1$1$3;

    invoke-direct {v0, p0}, Lcom/google/auto/common/AnnotationValues$1$1$3;-><init>(Lcom/google/auto/common/AnnotationValues$1$1;)V

    invoke-interface {p2, v0, p1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationValues$1$1;->visitArray(Ljava/util/List;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;
    .locals 1

    .line 83
    new-instance v0, Lcom/google/auto/common/AnnotationValues$1$1$4;

    invoke-direct {v0, p0}, Lcom/google/auto/common/AnnotationValues$1$1$4;-><init>(Lcom/google/auto/common/AnnotationValues$1$1;)V

    invoke-interface {p2, v0, p1}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p2, Ljavax/lang/model/element/AnnotationValue;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/AnnotationValues$1$1;->visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/element/AnnotationValue;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
