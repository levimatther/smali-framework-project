.class public final Lcom/google/auto/common/GeneratedAnnotationSpecs;
.super Ljava/lang/Object;
.source "GeneratedAnnotationSpecs.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-static {p0, p1}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;->INSTANCE:Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;

    .line 40
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$ozDHBZ-RnCt1UM6WEUcc6ChBrFI;

    invoke-direct {p1, p2}, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$ozDHBZ-RnCt1UM6WEUcc6ChBrFI;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 75
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;->INSTANCE:Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$M6opZya8CNYuC2PK3RfVwXq0r2I;

    .line 76
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static generatedAnnotationSpec(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-static {p0, p1, p2}, Lcom/google/auto/common/GeneratedAnnotationSpecs;->generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$DFhvX9UWY6WZPg1KAAtRkSOn-w8;

    invoke-direct {p1, p3}, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$DFhvX9UWY6WZPg1KAAtRkSOn-w8;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec$Builder;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lcom/google/auto/common/GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$xYb19lJcpHzJMLzL6q1dh9wwsY4;

    invoke-direct {v0, p1}, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$xYb19lJcpHzJMLzL6q1dh9wwsY4;-><init>(Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static generatedAnnotationSpecBuilder(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;Ljava/lang/Class;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/lang/model/util/Elements;",
            "Ljavax/lang/model/SourceVersion;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Optional<",
            "Lcom/squareup/javapoet/AnnotationSpec$Builder;",
            ">;"
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lcom/google/auto/common/GeneratedAnnotations;->generatedAnnotation(Ljavax/lang/model/util/Elements;Ljavax/lang/model/SourceVersion;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$PqbkjZnROsGkGnp3KvI3PUAobKc;

    invoke-direct {p1, p2}, Lcom/google/auto/common/-$$Lambda$GeneratedAnnotationSpecs$PqbkjZnROsGkGnp3KvI3PUAobKc;-><init>(Ljava/lang/Class;)V

    .line 96
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$M6opZya8CNYuC2PK3RfVwXq0r2I(Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/AnnotationSpec;
    .locals 0

    invoke-virtual {p0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpec$0(Ljava/lang/String;Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/AnnotationSpec;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "comments"

    const-string v1, "$S"

    .line 54
    invoke-virtual {p1, p0, v1, v0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpec$2(Ljava/lang/String;Lcom/squareup/javapoet/AnnotationSpec$Builder;)Lcom/squareup/javapoet/AnnotationSpec;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "comments"

    const-string v1, "$S"

    .line 90
    invoke-virtual {p1, p0, v1, v0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpecBuilder$1(Ljava/lang/Class;Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 2

    .line 62
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo p0, "value"

    const-string v1, "$S"

    invoke-virtual {p1, p0, v1, v0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$generatedAnnotationSpecBuilder$3(Ljava/lang/Class;Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/AnnotationSpec$Builder;
    .locals 2

    .line 98
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljavax/lang/model/element/TypeElement;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string/jumbo p0, "value"

    const-string v1, "$S"

    invoke-virtual {p1, p0, v1, v0}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->addMember(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p0

    return-object p0
.end method
