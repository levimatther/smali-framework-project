.class public final Lcom/squareup/javapoet/TypeSpec$Builder;
.super Ljava/lang/Object;
.source "TypeSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/TypeSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

.field public final enumConstants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/FieldSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

.field public final javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

.field public final kind:Lcom/squareup/javapoet/TypeSpec$Kind;

.field public final methodSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final modifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation
.end field

.field public final name:Ljava/lang/String;

.field public final originatingElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/lang/model/element/Element;",
            ">;"
        }
    .end annotation
.end field

.field public final staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

.field public superclass:Lcom/squareup/javapoet/TypeName;

.field public final superinterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeName;",
            ">;"
        }
    .end annotation
.end field

.field public final typeSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final typeVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    .line 7
    sget-object v0, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    .line 9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    .line 11
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 12
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->originatingElements:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 19
    invoke-static {p2}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v0

    const-string v0, "not a valid name: %s"

    invoke-static {v2, v0, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    .line 21
    iput-object p2, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;Lcom/squareup/javapoet/TypeSpec$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/javapoet/TypeSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeSpec$Kind;Ljava/lang/String;Lcom/squareup/javapoet/CodeBlock;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeSpec$Kind;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->originatingElements:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/squareup/javapoet/TypeSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/squareup/javapoet/TypeSpec$Builder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "annotationSpecs == null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/AnnotationSpec;

    .line 3
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addEnumConstant(Ljava/lang/String;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, ""

    .line 1
    invoke-static {v1, v0}, Lcom/squareup/javapoet/TypeSpec;->anonymousClassBuilder(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->build()Lcom/squareup/javapoet/TypeSpec;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addEnumConstant(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addEnumConstant(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v4, v1, v3

    const-string v4, "%s is not enum"

    invoke-static {v0, v4, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p2, Lcom/squareup/javapoet/TypeSpec;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "enum constants must have anonymous type arguments"

    invoke-static {v0, v4, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-static {p1}, Ljavax/lang/model/SourceVersion;->isName(Ljava/lang/CharSequence;)Z

    move-result v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string v2, "not a valid enum constant: %s"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v5, v4, v3

    iget-object v5, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "%s %s cannot have fields"

    invoke-static {v0, v5, v4}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v4, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v0, v4, :cond_1

    .line 3
    iget-object v0, p1, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    new-array v4, v1, [Ljavax/lang/model/element/Modifier;

    sget-object v5, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v3

    sget-object v5, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v5, v4, v2

    invoke-static {v0, v4}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 4
    sget-object v0, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    sget-object v4, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-static {v0, v4}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    .line 5
    iget-object v4, p1, Lcom/squareup/javapoet/FieldSpec;->modifiers:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v6, v5, v3

    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v3, v5, v2

    iget-object v2, p1, Lcom/squareup/javapoet/FieldSpec;->name:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x3

    aput-object v0, v5, v1

    const-string v0, "%s %s.%s requires modifiers %s"

    invoke-static {v4, v0, v5}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->fieldSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 9
    invoke-static {p1, p2, p3}, Lcom/squareup/javapoet/FieldSpec;->builder(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/FieldSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/FieldSpec$Builder;->build()Lcom/squareup/javapoet/FieldSpec;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public varargs addField(Ljava/lang/reflect/Type;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 10
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;[Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addFields(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/FieldSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "fieldSpecs == null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/FieldSpec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addField(Lcom/squareup/javapoet/FieldSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addInitializerBlock(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " can\'t have initializer blocks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->initializerBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "{\n"

    invoke-virtual {v0, v3, v2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->indent()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->unindent()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "}\n"

    .line 8
    invoke-virtual {p1, v1, v0}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->javadoc:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p1, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    new-array v1, v2, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v4

    sget-object v6, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v5

    sget-object v6, Lcom/squareup/javapoet/Util;->DEFAULT:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    .line 3
    iget-object v0, p1, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    new-array v1, v3, [Ljavax/lang/model/element/Modifier;

    sget-object v6, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v4

    sget-object v6, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    aput-object v6, v1, v5

    invoke-static {v0, v1}, Lcom/squareup/javapoet/Util;->requireExactlyOneOf(Ljava/util/Set;[Ljavax/lang/model/element/Modifier;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    invoke-static {v0}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v6, v1, v4

    iget-object v7, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v7, v1, v5

    iget-object v7, p1, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v7, v1, v3

    .line 7
    invoke-static {v6}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$1900(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v6

    aput-object v6, v1, v2

    const-string v6, "%s %s.%s requires modifiers %s"

    .line 8
    invoke-static {v0, v6, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ANNOTATION:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v1, :cond_3

    .line 13
    iget-object v0, p1, Lcom/squareup/javapoet/MethodSpec;->defaultValue:Lcom/squareup/javapoet/CodeBlock;

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    new-array v1, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v6, v1, v4

    iget-object v6, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v6, v1, v5

    iget-object v6, p1, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v6, v1, v3

    const-string v6, "%s %s.%s cannot have a default value"

    invoke-static {v0, v6, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->INTERFACE:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v1, :cond_4

    .line 17
    iget-object v0, p1, Lcom/squareup/javapoet/MethodSpec;->modifiers:Ljava/util/Set;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->hasDefaultModifier(Ljava/util/Collection;)Z

    move-result v0

    xor-int/2addr v0, v5

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%s %s.%s cannot be default"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :cond_4
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMethods(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/MethodSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "methodSpecs == null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/MethodSpec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addMethod(Lcom/squareup/javapoet/MethodSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forbidden on anonymous types."

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addOriginatingElement(Ljavax/lang/model/element/Element;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->originatingElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addStaticBlock(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->staticBlock:Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "static"

    invoke-virtual {v0, v2, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;->beginControlFlow(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->endControlFlow()Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addSuperinterface(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->addSuperinterface(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSuperinterfaces(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/squareup/javapoet/TypeName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "superinterfaces == null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeName;

    .line 3
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/squareup/javapoet/TypeSpec;->modifiers:Ljava/util/Set;

    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    invoke-static {v1}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$2000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v3, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p1, Lcom/squareup/javapoet/TypeSpec;->name:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v3, v1, v4

    .line 3
    invoke-static {v2}, Lcom/squareup/javapoet/TypeSpec$Kind;->access$2000(Lcom/squareup/javapoet/TypeSpec$Kind;)Ljava/util/Set;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "%s %s.%s requires modifiers %s"

    .line 4
    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeSpecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariable(Lcom/squareup/javapoet/TypeVariableName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "forbidden on anonymous types."

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addTypeVariables(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/TypeVariableName;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "forbidden on anonymous types."

    invoke-static {v0, v4, v3}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "typeVariables == null"

    .line 2
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeVariableName;

    .line 4
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->typeVariables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public addTypes(Ljava/lang/Iterable;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/TypeSpec;",
            ">;)",
            "Lcom/squareup/javapoet/TypeSpec$Builder;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "typeSpecs == null"

    .line 1
    invoke-static {v1, v2, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javapoet/TypeSpec;

    .line 3
    invoke-virtual {p0, v0}, Lcom/squareup/javapoet/TypeSpec$Builder;->addType(Lcom/squareup/javapoet/TypeSpec;)Lcom/squareup/javapoet/TypeSpec$Builder;

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/TypeSpec;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->ENUM:Lcom/squareup/javapoet/TypeSpec$Kind;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->enumConstants:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v4, v1, v2

    const-string v4, "at least one enum constant is required for %s"

    invoke-static {v0, v4, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->modifiers:Ljava/util/List;

    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->kind:Lcom/squareup/javapoet/TypeSpec$Kind;

    sget-object v1, Lcom/squareup/javapoet/TypeSpec$Kind;->CLASS:Lcom/squareup/javapoet/TypeSpec$Kind;

    if-eq v0, v1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v3

    .line 5
    :goto_3
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->methodSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/javapoet/MethodSpec;

    if-nez v0, :cond_5

    .line 6
    sget-object v5, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v4, v5}, Lcom/squareup/javapoet/MethodSpec;->hasModifier(Ljavax/lang/model/element/Modifier;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_5

    :cond_4
    move v5, v2

    goto :goto_6

    :cond_5
    :goto_5
    move v5, v3

    :goto_6
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->name:Ljava/lang/String;

    aput-object v7, v6, v2

    iget-object v4, v4, Lcom/squareup/javapoet/MethodSpec;->name:Ljava/lang/String;

    aput-object v4, v6, v3

    const-string v4, "non-abstract type %s cannot declare abstract method %s"

    invoke-static {v5, v4, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 10
    :cond_6
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    sget-object v1, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    invoke-virtual {v0, v1}, Lcom/squareup/javapoet/TypeName;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v3

    .line 11
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superinterfaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 12
    iget-object v1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->anonymousTypeArguments:Lcom/squareup/javapoet/CodeBlock;

    if-eqz v1, :cond_8

    if-gt v0, v3, :cond_7

    goto :goto_7

    :cond_7
    move v3, v2

    :cond_8
    :goto_7
    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "anonymous type has too many supertypes"

    invoke-static {v3, v1, v0}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lcom/squareup/javapoet/TypeSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/TypeSpec;-><init>(Lcom/squareup/javapoet/TypeSpec$Builder;Lcom/squareup/javapoet/TypeSpec$1;)V

    return-object v0
.end method

.method public superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    sget-object v1, Lcom/squareup/javapoet/ClassName;->OBJECT:Lcom/squareup/javapoet/ClassName;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "superclass already set to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/squareup/javapoet/Util;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p1}, Lcom/squareup/javapoet/TypeName;->isPrimitive()Z

    move-result v0

    xor-int/2addr v0, v2

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "superclass may not be a primitive"

    invoke-static {v0, v2, v1}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iput-object p1, p0, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method

.method public superclass(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeSpec$Builder;
    .locals 0

    .line 5
    invoke-static {p1}, Lcom/squareup/javapoet/TypeName;->get(Ljava/lang/reflect/Type;)Lcom/squareup/javapoet/TypeName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/TypeSpec$Builder;->superclass(Lcom/squareup/javapoet/TypeName;)Lcom/squareup/javapoet/TypeSpec$Builder;

    move-result-object p1

    return-object p1
.end method
