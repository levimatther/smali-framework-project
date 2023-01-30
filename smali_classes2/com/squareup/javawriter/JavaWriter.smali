.class public final Lcom/squareup/javawriter/JavaWriter;
.super Ljava/lang/Object;
.source "JavaWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/javawriter/JavaWriter$Scope;
    }
.end annotation


# static fields
.field public static final INDENT:Ljava/lang/String; = "  "

.field public static final TYPE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field public final importedTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final out:Ljava/io/Writer;

.field public packagePrefix:Ljava/lang/String;

.field public final scopes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/javawriter/JavaWriter$Scope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:[\\w$]+\\.)*([\\w\\.*$]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    .line 12
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    return-void
.end method

.method private checkInMethod()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->peekScope()Lcom/squareup/javawriter/JavaWriter$Scope;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 5
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    const-string v4, "\n"

    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v2, v1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v6, ",\n"

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 13
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 16
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 18
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    return-object p0
.end method

.method private emitModifiers(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/util/EnumSet;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/lang/model/element/Modifier;

    .line 5
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljavax/lang/model/element/Modifier;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->compressType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method private hangingIndent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indent()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isAmbiguous(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isClassInPackage(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2e

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v0, v0, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[A-Z]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static modifiersAsSet(I)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/EnumSet<",
            "Ljavax/lang/model/element/Modifier;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Ljavax/lang/model/element/Modifier;->PUBLIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 6
    sget-object v1, Ljavax/lang/model/element/Modifier;->PRIVATE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 9
    sget-object v1, Ljavax/lang/model/element/Modifier;->PROTECTED:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 12
    sget-object v1, Ljavax/lang/model/element/Modifier;->STATIC:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 15
    sget-object v1, Ljavax/lang/model/element/Modifier;->FINAL:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_5

    .line 18
    sget-object v1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    .line 21
    sget-object v1, Ljavax/lang/model/element/Modifier;->SYNCHRONIZED:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    .line 24
    sget-object v1, Ljavax/lang/model/element/Modifier;->TRANSIENT:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_7
    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_8

    .line 27
    sget-object p0, Ljavax/lang/model/element/Modifier;->VOLATILE:Ljavax/lang/model/element/Modifier;

    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method private peekScope()Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method

.method private popScope()Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method

.method private popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->scopes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static stringLiteral(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x22

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    if-eq v4, v1, :cond_2

    const/16 v5, 0x5c

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 28
    invoke-static {v4}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v4, "\\n"

    .line 32
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v4, "\\t"

    .line 33
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v4, "\\b"

    .line 34
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v4, "\\\\"

    .line 35
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\\\""

    .line 36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v4, "\\r"

    .line 54
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string v4, "\\f"

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static varargs type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "<"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 10
    aget-object p0, p1, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    .line 11
    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_1

    const-string v1, ", "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, ">"

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public beginControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 3
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public beginInitializer(Z)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "static"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "{\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    :goto_0
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 5
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    const-string v0, " "

    if-eqz p1, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 8
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "("

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p1, ", "

    const/4 p2, 0x0

    if-eqz p4, :cond_2

    move v1, p2

    .line 15
    :goto_1
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-eqz v1, :cond_1

    .line 17
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 19
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 20
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v2, 0x1

    .line 21
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 24
    :cond_2
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ")"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p5, :cond_4

    .line 25
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_4

    .line 26
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "\n"

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 28
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "    throws "

    invoke-virtual {p4, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 29
    :goto_2
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_4

    if-eqz p2, :cond_3

    .line 31
    iget-object p4, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p4, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    :cond_3
    invoke-interface {p5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 36
    :cond_4
    sget-object p1, Ljavax/lang/model/element/Modifier;->ABSTRACT:Ljavax/lang/model/element/Modifier;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 37
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 38
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    goto :goto_3

    .line 40
    :cond_5
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 41
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    :goto_3
    return-object p0
.end method

.method public varargs beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginMethod(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/List;Ljava/util/List;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;I)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    const/4 p3, 0x0

    new-array v5, p3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v6, v0, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-virtual/range {v1 .. v6}, Lcom/squareup/javawriter/JavaWriter;->beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs beginType(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;[Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 6
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 7
    iget-object p3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    if-eqz p4, :cond_0

    .line 11
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " extends "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, p4}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 14
    :cond_0
    array-length p1, p5

    if-lez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 17
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "    implements "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 18
    :goto_0
    array-length p2, p5

    if-ge p1, p2, :cond_2

    if-eqz p1, :cond_1

    .line 20
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    :cond_1
    aget-object p2, p5, p1

    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 25
    :cond_2
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " {\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 26
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public compressType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 6
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 13
    :goto_1
    invoke-virtual {v0, p1, v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    if-nez v4, :cond_1

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 40
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 43
    :cond_2
    invoke-direct {p0, v3}, Lcom/squareup/javawriter/JavaWriter;->isClassInPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 44
    iget-object v4, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-direct {p0, v4}, Lcom/squareup/javawriter/JavaWriter;->isAmbiguous(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 48
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v4, "java.lang."

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0xa

    .line 51
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 53
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :goto_2
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto :goto_0

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public emitAnnotation(Ljava/lang/Class;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 3
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/Class;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 11
    invoke-static {p1, v0}, Lcom/squareup/javawriter/JavaWriter;->type(Ljava/lang/Class;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 5
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 7
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 9
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitAnnotation(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/javawriter/JavaWriter;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 13
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    const-string v0, "\n"

    if-eqz p1, :cond_4

    const-string v1, ")"

    const-string v2, "("

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 20
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 21
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p2, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 22
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    .line 23
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 27
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 28
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 30
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 33
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move v3, v2

    goto :goto_2

    .line 35
    :cond_2
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, ",\n"

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 37
    :goto_2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 38
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 39
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 40
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 41
    invoke-direct {p0, p2}, Lcom/squareup/javawriter/JavaWriter;->emitAnnotationValue(Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;

    goto :goto_1

    .line 43
    :cond_3
    sget-object p1, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 44
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 46
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 49
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEmptyLine()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitEnumValue(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ",\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-class v0, Ljavax/lang/model/element/Modifier;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;I)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-static {p3}, Lcom/squareup/javawriter/JavaWriter;->modifiersAsSet(I)Ljava/util/EnumSet;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/squareup/javawriter/JavaWriter;->emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public emitField(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljavax/lang/model/element/Modifier;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 6
    invoke-direct {p0, p3}, Lcom/squareup/javawriter/JavaWriter;->emitModifiers(Ljava/util/Set;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitType(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    .line 8
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 12
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {p1, p4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public varargs emitImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public varargs emitJavadoc(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 4
    iget-object p2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "/**\n"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string p2, "\n"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 6
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 7
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 12
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, " */\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitPackage(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->packagePrefix:Ljava/lang/String;

    :goto_0
    return-object p0

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public varargs emitSingleLineComment(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 2
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "// "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public varargs emitStatement(Ljava/lang/String;[Ljava/lang/Object;)Lcom/squareup/javawriter/JavaWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->checkInMethod()V

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 4
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->hangingIndent()V

    .line 8
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string p2, ";\n"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/squareup/javawriter/JavaWriter;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/squareup/javawriter/JavaWriter;->TYPE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/squareup/javawriter/JavaWriter;->importedTypes:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 10
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v2, "import static "

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return-object p0
.end method

.method public varargs emitStaticImports([Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/squareup/javawriter/JavaWriter;->emitStaticImports(Ljava/util/Collection;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object p1

    return-object p1
.end method

.method public endControlFlow()Lcom/squareup/javawriter/JavaWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->endControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;

    move-result-object v0

    return-object v0
.end method

.method public endControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 3
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, ";\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, "}\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public endInitializer()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 3
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public endMethod()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->popScope()Lcom/squareup/javawriter/JavaWriter$Scope;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 4
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    if-ne v0, v1, :cond_1

    :goto_0
    return-object p0

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public endType()Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 3
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method

.method public nextControlFlow(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->popScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 2
    invoke-direct {p0}, Lcom/squareup/javawriter/JavaWriter;->indent()V

    .line 3
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-direct {p0, v0}, Lcom/squareup/javawriter/JavaWriter;->pushScope(Lcom/squareup/javawriter/JavaWriter$Scope;)V

    .line 4
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/squareup/javawriter/JavaWriter;->out:Ljava/io/Writer;

    const-string v0, " {\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-object p0
.end method
