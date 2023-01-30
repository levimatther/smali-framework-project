.class final Lcom/google/auto/common/MoreElements$1;
.super Ljava/lang/Object;
.source "MoreElements.java"

# interfaces
.implements Lcom/google/common/base/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auto/common/MoreElements;->hasModifiers(Ljava/util/Set;)Lcom/google/common/base/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$modifiers:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/google/auto/common/MoreElements$1;->val$modifiers:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 0

    .line 250
    check-cast p1, Ljavax/lang/model/element/Element;

    invoke-virtual {p0, p1}, Lcom/google/auto/common/MoreElements$1;->apply(Ljavax/lang/model/element/Element;)Z

    move-result p1

    return p1
.end method

.method public apply(Ljavax/lang/model/element/Element;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 253
    invoke-interface {p1}, Ljavax/lang/model/element/Element;->getModifiers()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/google/auto/common/MoreElements$1;->val$modifiers:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method
