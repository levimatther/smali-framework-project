.class final Lcom/google/auto/common/SuperficialValidation$3;
.super Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;
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
        "Ljavax/lang/model/util/SimpleAnnotationValueVisitor6<",
        "Ljava/lang/Boolean;",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleAnnotationValueVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected defaultAction(Ljava/lang/Object;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 2

    .line 210
    invoke-static {}, Lcom/google/auto/common/MoreTypes;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/AnnotationMirror;->getAnnotationType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 211
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$500(Ljavax/lang/model/element/AnnotationMirror;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 210
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitAnnotation(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/element/AnnotationValue;",
            ">;",
            "Ljavax/lang/model/type/TypeMirror;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 216
    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    .line 217
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v0, :cond_0

    return-object v1

    .line 220
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/google/auto/common/MoreTypes;->asArray(Ljavax/lang/model/type/TypeMirror;)Ljavax/lang/model/type/ArrayType;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/AnnotationValue;

    .line 225
    invoke-interface {v0, p0, p2}, Ljavax/lang/model/element/AnnotationValue;->accept(Ljavax/lang/model/element/AnnotationValueVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x1

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :catch_0
    return-object v1
.end method

.method public bridge synthetic visitArray(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitArray(Ljava/util/List;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitBoolean(ZLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 247
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitBoolean(ZLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitBoolean(ZLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitByte(BLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 251
    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitByte(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitByte(BLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitChar(CLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 255
    sget-object p1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitChar(CLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitChar(CLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDouble(DLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 259
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p3}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDouble(DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p3, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/auto/common/SuperficialValidation$3;->visitDouble(DLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 2

    .line 234
    invoke-static {}, Lcom/google/auto/common/MoreTypes;->equivalence()Lcom/google/common/base/Equivalence;

    move-result-object v0

    invoke-interface {p1}, Ljavax/lang/model/element/VariableElement;->asType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 235
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->validateElement(Ljavax/lang/model/element/Element;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 234
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitEnumConstant(Ljavax/lang/model/element/VariableElement;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitFloat(FLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 263
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitFloat(FLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitFloat(FLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitInt(ILjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 267
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitInt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitInt(ILjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitLong(JLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 271
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p3}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitLong(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p3, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/auto/common/SuperficialValidation$3;->visitLong(JLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitShort(SLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 275
    sget-object p1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p1, p2}, Lcom/google/auto/common/MoreTypes;->isTypeOf(Ljava/lang/Class;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitShort(SLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitShort(SLjavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 243
    invoke-static {p1}, Lcom/google/auto/common/SuperficialValidation;->access$300(Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitType(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;
    .locals 0

    .line 206
    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->defaultAction(Ljava/lang/Object;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 199
    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/SuperficialValidation$3;->visitUnknown(Ljavax/lang/model/element/AnnotationValue;Ljavax/lang/model/type/TypeMirror;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
