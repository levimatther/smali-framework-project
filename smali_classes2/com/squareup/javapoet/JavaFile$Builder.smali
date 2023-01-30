.class public final Lcom/squareup/javapoet/JavaFile$Builder;
.super Ljava/lang/Object;
.source "JavaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javapoet/JavaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public final fileComment:Lcom/squareup/javapoet/CodeBlock$Builder;

.field public indent:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;

.field public skipJavaLangImports:Z

.field public final staticImports:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final typeSpec:Lcom/squareup/javapoet/TypeSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/squareup/javapoet/CodeBlock;->builder()Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->fileComment:Lcom/squareup/javapoet/CodeBlock$Builder;

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->staticImports:Ljava/util/Set;

    const-string v0, "  "

    .line 6
    iput-object v0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->indent:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/squareup/javapoet/JavaFile$Builder;->packageName:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/squareup/javapoet/JavaFile$Builder;->typeSpec:Lcom/squareup/javapoet/TypeSpec;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;Lcom/squareup/javapoet/JavaFile$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/squareup/javapoet/JavaFile$Builder;-><init>(Ljava/lang/String;Lcom/squareup/javapoet/TypeSpec;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/squareup/javapoet/JavaFile$Builder;)Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->fileComment:Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/squareup/javapoet/JavaFile$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/squareup/javapoet/JavaFile$Builder;)Lcom/squareup/javapoet/TypeSpec;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->typeSpec:Lcom/squareup/javapoet/TypeSpec;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/squareup/javapoet/JavaFile$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->skipJavaLangImports:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/squareup/javapoet/JavaFile$Builder;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/squareup/javapoet/JavaFile$Builder;->skipJavaLangImports:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/squareup/javapoet/JavaFile$Builder;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->staticImports:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/squareup/javapoet/JavaFile$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/squareup/javapoet/JavaFile$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/javapoet/JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public varargs addFileComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/JavaFile$Builder;->fileComment:Lcom/squareup/javapoet/CodeBlock$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    return-object p0
.end method

.method public varargs addStaticImport(Lcom/squareup/javapoet/ClassName;[Ljava/lang/String;)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "className == null"

    .line 3
    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "names == null"

    .line 4
    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    array-length v2, p2

    if-lez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "names array is empty"

    invoke-static {v2, v4, v3}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    array-length v2, p2

    move v3, v1

    :goto_3
    if-ge v3, v2, :cond_4

    aget-object v4, p2, v3

    if-eqz v4, :cond_3

    move v5, v0

    goto :goto_4

    :cond_3
    move v5, v1

    :goto_4
    new-array v6, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "null entry in names array: %s"

    invoke-static {v5, v7, v6}, Lcom/squareup/javapoet/Util;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v5, p0, Lcom/squareup/javapoet/JavaFile$Builder;->staticImports:Ljava/util/Set;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/squareup/javapoet/ClassName;->canonicalName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    return-object p0
.end method

.method public varargs addStaticImport(Ljava/lang/Class;[Ljava/lang/String;)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javapoet/JavaFile$Builder;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javapoet/JavaFile$Builder;->addStaticImport(Lcom/squareup/javapoet/ClassName;[Ljava/lang/String;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addStaticImport(Ljava/lang/Enum;)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/squareup/javapoet/JavaFile$Builder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/javapoet/ClassName;->get(Ljava/lang/Class;)Lcom/squareup/javapoet/ClassName;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/squareup/javapoet/JavaFile$Builder;->addStaticImport(Lcom/squareup/javapoet/ClassName;[Ljava/lang/String;)Lcom/squareup/javapoet/JavaFile$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/squareup/javapoet/JavaFile;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/JavaFile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/javapoet/JavaFile;-><init>(Lcom/squareup/javapoet/JavaFile$Builder;Lcom/squareup/javapoet/JavaFile$1;)V

    return-object v0
.end method

.method public indent(Ljava/lang/String;)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/squareup/javapoet/JavaFile$Builder;->indent:Ljava/lang/String;

    return-object p0
.end method

.method public skipJavaLangImports(Z)Lcom/squareup/javapoet/JavaFile$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/squareup/javapoet/JavaFile$Builder;->skipJavaLangImports:Z

    return-object p0
.end method
