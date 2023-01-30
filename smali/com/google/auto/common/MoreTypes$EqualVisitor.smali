.class final Lcom/google/auto/common/MoreTypes$EqualVisitor;
.super Ljavax/lang/model/util/SimpleTypeVisitor6;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EqualVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/lang/model/util/SimpleTypeVisitor6<",
        "Ljava/lang/Boolean;",
        "Lcom/google/auto/common/MoreTypes$EqualVisitorParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$EqualVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 154
    new-instance v0, Lcom/google/auto/common/MoreTypes$EqualVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$EqualVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$EqualVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$EqualVisitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljavax/lang/model/util/SimpleTypeVisitor6;-><init>()V

    return-void
.end method

.method static synthetic access$600()Lcom/google/auto/common/MoreTypes$EqualVisitor;
    .locals 1

    .line 153
    sget-object v0, Lcom/google/auto/common/MoreTypes$EqualVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$EqualVisitor;

    return-object v0
.end method

.method private visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljava/util/List<",
            "+",
            "Ljavax/lang/model/type/TypeMirror;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;"
        }
    .end annotation

    .line 264
    new-instance v0, Lcom/google/auto/common/MoreTypes$ComparedElements;

    .line 266
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p3

    .line 267
    invoke-static {p5}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p5

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/google/auto/common/MoreTypes$ComparedElements;-><init>(Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableList;Ljavax/lang/model/element/Element;Lcom/google/common/collect/ImmutableList;)V

    .line 268
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 269
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method private visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;",
            "Ljavax/lang/model/element/Element;",
            "Ljavax/lang/model/element/Element;",
            ")",
            "Ljava/util/Set<",
            "Lcom/google/auto/common/MoreTypes$ComparedElements;",
            ">;"
        }
    .end annotation

    .line 254
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v5

    move-object v4, p3

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected defaultAction(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 158
    invoke-interface {p1}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p1

    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {p2}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic defaultAction(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->defaultAction(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 2

    .line 163
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/ArrayType;

    .line 165
    invoke-interface {p1}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/ArrayType;->getComponentType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 167
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Ljavax/lang/model/type/DeclaredType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 10

    .line 172
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->DECLARED:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/DeclaredType;

    .line 174
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v8

    .line 175
    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v9

    .line 176
    iget-object v3, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    .line 178
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v7

    move-object v2, p0

    move-object v4, v8

    move-object v6, v9

    .line 177
    invoke-direct/range {v2 .. v7}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljava/util/List;Ljavax/lang/model/element/Element;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 179
    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    .line 186
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 188
    :cond_0
    invoke-interface {v8, v9}, Ljavax/lang/model/element/Element;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    invoke-static {p1}, Lcom/google/auto/common/MoreTypes;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-static {v0}, Lcom/google/auto/common/MoreTypes;->access$300(Ljavax/lang/model/type/DeclaredType;)Ljavax/lang/model/type/TypeMirror;

    move-result-object v4

    invoke-static {p2, v4, v2}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 190
    invoke-interface {p1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2, v2}, Lcom/google/auto/common/MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    .line 188
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 192
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitDeclared(Ljavax/lang/model/type/DeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitDeclared(Ljavax/lang/model/type/DeclaredType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitError(Ljavax/lang/model/type/ErrorType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 197
    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitError(Ljavax/lang/model/type/ErrorType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitError(Ljavax/lang/model/type/ErrorType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 5

    .line 202
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->EXECUTABLE:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/ExecutableType;

    .line 204
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getParameterTypes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lcom/google/auto/common/MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getReturnType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getThrownTypes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lcom/google/auto/common/MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    invoke-interface {p1}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/ExecutableType;->getTypeVariables()Ljava/util/List;

    move-result-object v0

    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/google/auto/common/MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 204
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 209
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 6

    .line 214
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/TypeVariable;

    .line 216
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/element/TypeParameterElement;

    .line 217
    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v3

    check-cast v3, Ljavax/lang/model/element/TypeParameterElement;

    .line 218
    iget-object v4, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-direct {p0, v4, v2, v3}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitingSetPlus(Ljava/util/Set;Ljavax/lang/model/element/Element;Ljavax/lang/model/element/Element;)Ljava/util/Set;

    move-result-object v4

    .line 219
    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-interface {v4, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v5, 0x1

    if-eqz p2, :cond_0

    .line 223
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 230
    :cond_0
    invoke-interface {v2}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object p2

    invoke-interface {v3}, Ljavax/lang/model/element/TypeParameterElement;->getBounds()Ljava/util/List;

    move-result-object v2

    invoke-static {p2, v2, v4}, Lcom/google/auto/common/MoreTypes;->access$400(Ljava/util/List;Ljava/util/List;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 231
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p2

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->getLowerBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-static {p2, v2, v4}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 232
    invoke-interface {p1}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p1

    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/TypeVariable;->asElement()Ljavax/lang/model/element/Element;

    move-result-object p2

    invoke-interface {p2}, Ljavax/lang/model/element/Element;->getSimpleName()Ljavax/lang/model/element/Name;

    move-result-object p2

    invoke-interface {p1, p2}, Ljavax/lang/model/element/Name;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v5

    .line 230
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 234
    :cond_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitTypeVariable(Ljavax/lang/model/type/TypeVariable;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitUnknown(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 0

    .line 249
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic visitUnknown(Ljavax/lang/model/type/TypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitUnknown(Ljavax/lang/model/type/TypeMirror;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Ljavax/lang/model/type/WildcardType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;
    .locals 5

    .line 239
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    invoke-interface {v0}, Ljavax/lang/model/type/TypeMirror;->getKind()Ljavax/lang/model/type/TypeKind;

    move-result-object v0

    sget-object v1, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    invoke-virtual {v0, v1}, Ljavax/lang/model/type/TypeKind;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->type:Ljavax/lang/model/type/TypeMirror;

    check-cast v0, Ljavax/lang/model/type/WildcardType;

    .line 241
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v2

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getExtendsBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v3

    iget-object v4, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {v2, v3, v4}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 242
    invoke-interface {p1}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object p1

    invoke-interface {v0}, Ljavax/lang/model/type/WildcardType;->getSuperBound()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    iget-object p2, p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;->visiting:Ljava/util/Set;

    invoke-static {p1, v0, p2}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 241
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 244
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visitWildcard(Ljavax/lang/model/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 153
    check-cast p2, Lcom/google/auto/common/MoreTypes$EqualVisitorParam;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$EqualVisitor;->visitWildcard(Ljavax/lang/model/type/WildcardType;Lcom/google/auto/common/MoreTypes$EqualVisitorParam;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
