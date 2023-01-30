.class final Lcom/google/auto/common/SuperficialValidation$1;
.super Ljavax/lang/model/util/AbstractElementVisitor6;
.source "SuperficialValidation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/SuperficialValidation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/AbstractElementVisitor6<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljavax/lang/model/util/AbstractElementVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method public visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1

    .line 77
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getDefaultValue()Ljavax/lang/model/element/AnnotationValue;

    move-result-object p2

    .line 78
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$100(Ljavax/lang/model/element/Element;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 79
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/auto/common/SuperficialValidation;->access$400(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    :cond_0
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/common/SuperficialValidation;->access$300(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 81
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getThrownTypes()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/common/SuperficialValidation;->access$200(Ljava/lang/Iterable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 82
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getTypeParameters()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/common/SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 83
    invoke-interface {p1}, Ljavax/lang/model/element/ExecutableElement;->getParameters()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 78
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitExecutable(Ljavax/lang/model/element/ExecutableElement;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 62
    invoke-interface {p1}, Ljavax/lang/model/element/PackageElement;->getAnnotationMirrors()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$000(Ljava/lang/Iterable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$100(Ljavax/lang/model/element/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 67
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getTypeParameters()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/common/SuperficialValidation;->validateElements(Ljava/lang/Iterable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getInterfaces()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/google/auto/common/SuperficialValidation;->access$200(Ljava/lang/Iterable;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 69
    invoke-interface {p1}, Ljavax/lang/model/element/TypeElement;->getSuperclass()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$300(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 66
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 87
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$100(Ljavax/lang/model/element/Element;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 88
    invoke-interface {p1}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$200(Ljava/lang/Iterable;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 87
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitTypeParameter(Ljavax/lang/model/element/TypeParameterElement;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x1

    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitUnknown(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$100(Ljavax/lang/model/element/Element;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 59
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$1;->visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
