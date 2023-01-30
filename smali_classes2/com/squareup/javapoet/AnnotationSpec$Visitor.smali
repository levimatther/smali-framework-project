.class public Lcom/squareup/javapoet/AnnotationSpec$Visitor;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor7;
.source "AnnotationSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/AnnotationSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor7<",
        "Lcom/squareup/javapoet/AnnotationSpec$Builder;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/AnnotationSpec$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor7;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p1, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    return-void
.end method


# virtual methods
.method public defaultAction(Ljava/lang/Object;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    invoke-virtual {v0, p2, p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMemberForValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->defaultAction(Ljava/lang/Object;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->get(Ljavax/lang/model/element/AnnotationMirror;)Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "$L"

    invoke-virtual {v0, p2, p1, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javapoet/AnnotationSpec$Builder;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 3
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->visitArray(Ljava/util/List;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "$T.$L"

    invoke-virtual {v0, p2, p1, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->builder:Lcom/squareup/javapoet/AnnotationSpec$Builder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "$T.class"

    invoke-virtual {v0, p2, p1, v1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/AnnotationSpec$Visitor;->visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/String;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    return-object p1
.end method
