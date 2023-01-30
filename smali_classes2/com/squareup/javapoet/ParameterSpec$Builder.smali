.class public final Lcom/squareup/javapoet/ParameterSpec$Builder;
.super Ljava/lang/Object;
.source "ParameterSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/ParameterSpec;
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

.field public final type:Lcom/squareup/javapoet/TypeName;


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->modifiers:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    .line 8
    iput-object p2, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->name:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;Lcom/squareup/javapoet/ParameterSpec$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/javapoet/ParameterSpec$Builder;-><init>(Lcom/squareup/javapoet/TypeName;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/squareup/javapoet/ParameterSpec$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/squareup/javapoet/ParameterSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/squareup/javapoet/ParameterSpec$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->modifiers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/squareup/javapoet/ParameterSpec$Builder;)Lcom/squareup/javapoet/TypeName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->type:Lcom/squareup/javapoet/TypeName;

    return-object p0
.end method


# virtual methods
.method public addAnnotation(Lcom/squareup/javapoet/AnnotationSpec;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/javapoet/AnnotationSpec;->builder(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/AnnotationSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/javapoet/AnnotationSpec$Builder;->build()Lcom/squareup/javapoet/AnnotationSpec;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAnnotation(Ljava/lang/Class;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/squareup/javapoet/ParameterSpec$Builder;"
        }
    .end annotation

    .line 3
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javapoet/ParameterSpec$Builder;->addAnnotation(Lcom/squareup/javapoet/ClassName;)Lcom/squareup/javapoet/ParameterSpec$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addAnnotations(Ljava/lang/Iterable;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/squareup/javapoet/AnnotationSpec;",
            ">;)",
            "Lcom/squareup/javapoet/ParameterSpec$Builder;"
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
    iget-object v1, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->annotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public varargs addModifiers([Ljavax/lang/model/element/Modifier;)Lcom/squareup/javapoet/ParameterSpec$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/ParameterSpec$Builder;->modifiers:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/squareup/javapoet/ParameterSpec;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/ParameterSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/ParameterSpec;-><init>(Lcom/squareup/javapoet/ParameterSpec$Builder;Lcom/squareup/javapoet/ParameterSpec$1;)V

    return-object v0
.end method
