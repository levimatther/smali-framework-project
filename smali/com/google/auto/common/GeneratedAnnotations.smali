.class public final Lcom/google/auto/common/GeneratedAnnotations;
.super Ljava/lang/Object;
.source "GeneratedAnnotations.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatedAnnotation(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "javax.annotation.processing.Generated"

    .line 39
    invoke-interface {p0, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "javax.annotation.Generated"

    .line 43
    invoke-interface {p0, v0}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotation(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            ")",
            "Ljava/util/Optional<",
            "Ljavax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Ljavax/lang/model/SourceVersion;->RELEASE_8:Ljavax/lang/model/SourceVersion;

    .line 58
    invoke-virtual {p1, v0}, Ljavax/lang/model/SourceVersion;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "javax.annotation.processing.Generated"

    goto :goto_0

    :cond_0
    const-string p1, "javax.annotation.Generated"

    .line 57
    :goto_0
    invoke-interface {p0, p1}, Ljavax/lang/model/util/Elements;->getTypeElement(Ljava/lang/CharSequence;)Ljavax/lang/model/element/TypeElement;

    move-result-object p0

    .line 56
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method
