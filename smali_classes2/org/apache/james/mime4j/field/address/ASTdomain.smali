.class public Lorg/apache/james/mime4j/field/address/ASTdomain;
.super Lorg/apache/james/mime4j/field/address/SimpleNode;
.source "ASTdomain.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/AddressListParser;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lorg/apache/james/mime4j/field/address/SimpleNode;-><init>(Lorg/apache/james/mime4j/field/address/AddressListParser;I)V

    return-void
.end method


# virtual methods
.method public jjtAccept(Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-interface {p1, p0, p2}, Lorg/apache/james/mime4j/field/address/AddressListParserVisitor;->visit(Lorg/apache/james/mime4j/field/address/ASTdomain;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
