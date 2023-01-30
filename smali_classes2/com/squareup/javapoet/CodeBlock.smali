.class public final Lcom/squareup/javapoet/CodeBlock;
.super Ljava/lang/Object;
.source "CodeBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javapoet/CodeBlock$Builder;
    }
.end annotation


# instance fields
.field public final args:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final formatParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/javapoet/CodeBlock$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    .line 4
    iget-object p1, p1, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    invoke-static {p1}, Lcom/squareup/javapoet/Util;->immutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/squareup/javapoet/CodeBlock$Builder;Lcom/squareup/javapoet/CodeBlock$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/squareup/javapoet/CodeBlock;-><init>(Lcom/squareup/javapoet/CodeBlock$Builder;)V

    return-void
.end method

.method public static builder()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    return-object v0
.end method

.method public static varargs of(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock;
    .locals 2

    .line 1
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    invoke-virtual {v0, p0, p1}, Lcom/squareup/javapoet/CodeBlock$Builder;->add(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javapoet/CodeBlock$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock$Builder;->build()Lcom/squareup/javapoet/CodeBlock;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/squareup/javapoet/CodeBlock;

    if-eq v2, v1, :cond_2

    return v0

    .line 2
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/squareup/javapoet/CodeBlock;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public toBuilder()Lcom/squareup/javapoet/CodeBlock$Builder;
    .locals 3

    .line 1
    new-instance v0, Lcom/squareup/javapoet/CodeBlock$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/squareup/javapoet/CodeBlock$Builder;-><init>(Lcom/squareup/javapoet/CodeBlock$1;)V

    .line 2
    iget-object v1, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->formatParts:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/CodeBlock;->formatParts:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v1, v0, Lcom/squareup/javapoet/CodeBlock$Builder;->args:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/javapoet/CodeBlock;->args:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 3
    :try_start_0
    new-instance v1, Lcom/squareup/javapoet/CodeWriter;

    invoke-direct {v1, v0}, Lcom/squareup/javapoet/CodeWriter;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {v1, p0}, Lcom/squareup/javapoet/CodeWriter;->emit(Lcom/squareup/javapoet/CodeBlock;)Lcom/squareup/javapoet/CodeWriter;

    .line 4
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
