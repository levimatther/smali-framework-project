.class public Lorg/apache/james/mime4j/field/address/SimpleNode;
.super Lorg/apache/james/mime4j/field/address/BaseNode;
.source "SimpleNode.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/Node;


# instance fields
.field protected children:[Lorg/apache/james/mime4j/field/address/Node;

.field protected id:I

.field protected parent:Lorg/apache/james/mime4j/field/address/Node;

.field protected parser:Lorg/apache/james/mime4j/field/address/AddressListParser;

.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/BaseNode;-><init>()V

    .line 15
    iput p1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->id:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/AddressListParser;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    .line 20
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->parser:Lorg/apache/james/mime4j/field/address/AddressListParser;

    return-void
.end method


# virtual methods
.method public childrenAccept(Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 65
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lorg/apache/james/mime4j/field/address/Node;->jjtAccept(Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public dump(Ljava/lang/String;)V
    .locals 4

    .line 84
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/address/SimpleNode;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 86
    :goto_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 87
    aget-object v1, v1, v0

    check-cast v1, Lorg/apache/james/mime4j/field/address/SimpleNode;

    if-eqz v1, :cond_0

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/SimpleNode;->dump(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public jjtAccept(Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/SimpleNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public jjtAddChild(Lorg/apache/james/mime4j/field/address/Node;I)V
    .locals 4

    .line 33
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    .line 34
    new-array v0, v0, [Lorg/apache/james/mime4j/field/address/Node;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_0

    .line 35
    :cond_0
    array-length v1, v0

    if-lt p2, v1, :cond_1

    add-int/lit8 v1, p2, 0x1

    .line 36
    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/Node;

    .line 37
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    aput-object p1, v0, p2

    return-void
.end method

.method public jjtClose()V
    .locals 0

    return-void
.end method

.method public jjtGetChild(I)Lorg/apache/james/mime4j/field/address/Node;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public jjtGetNumChildren()I
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->children:[Lorg/apache/james/mime4j/field/address/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    :goto_0
    return v0
.end method

.method public jjtGetParent()Lorg/apache/james/mime4j/field/address/Node;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->parent:Lorg/apache/james/mime4j/field/address/Node;

    return-object v0
.end method

.method public jjtGetValue()Ljava/lang/Object;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public jjtOpen()V
    .locals 0

    return-void
.end method

.method public jjtSetParent(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->parent:Lorg/apache/james/mime4j/field/address/Node;

    return-void
.end method

.method public jjtSetValue(Ljava/lang/Object;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    sget-object v0, Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;->jjtNodeName:[Ljava/lang/String;

    iget v1, p0, Lorg/apache/james/mime4j/field/address/SimpleNode;->id:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/SimpleNode;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
