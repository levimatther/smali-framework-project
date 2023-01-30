.class Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/james/mime4j/field/address/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildNodeIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/apache/james/mime4j/field/address/Node;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private len:I

.field private simpleNode:Lorg/apache/james/mime4j/field/address/SimpleNode;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/field/address/SimpleNode;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lorg/apache/james/mime4j/field/address/SimpleNode;

    .line 212
    invoke-virtual {p1}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetNumChildren()I

    move-result p1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    const/4 p1, 0x0

    .line 213
    iput p1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 221
    iget v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->len:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->next()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/james/mime4j/field/address/Node;
    .locals 3

    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->simpleNode:Lorg/apache/james/mime4j/field/address/SimpleNode;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/Builder$ChildNodeIterator;->index:I

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/SimpleNode;->jjtGetChild(I)Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 217
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
