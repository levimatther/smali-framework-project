.class final Lcom/google/auto/common/BasicAnnotationProcessor$2;
.super Ljavax/lang/model/util/SimpleElementVisitor6;
.source "BasicAnnotationProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/common/BasicAnnotationProcessor;->getEnclosingType(Ljavax/lang/model/element/Element;)Ljavax/lang/model/element/TypeElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleElementVisitor6<",
        "Ljavax/lang/model/element/TypeElement;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 408
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleElementVisitor6;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor$2;->defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Ljavax/lang/model/element/Element;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 410
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getEnclosingElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Ljavax/lang/model/element/Element;->accept(Ljavax/lang/model/element/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/lang/model/element/TypeElement;

    return-object p1
.end method

.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor$2;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    .line 418
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/BasicAnnotationProcessor$2;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    return-object p1
.end method
