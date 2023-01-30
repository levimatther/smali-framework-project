.class public Lorg/apache/james/mime4j/field/structured/parser/Token;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public beginColumn:I

.field public beginLine:I

.field public endColumn:I

.field public endLine:I

.field public image:Ljava/lang/String;

.field public kind:I

.field public next:Lorg/apache/james/mime4j/field/structured/parser/Token;

.field public specialToken:Lorg/apache/james/mime4j/field/structured/parser/Token;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    .line 112
    iput-object p2, p0, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    return-void
.end method

.method public static newToken(I)Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-static {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/Token;->newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object p0

    return-object p0
.end method

.method public static newToken(ILjava/lang/String;)Lorg/apache/james/mime4j/field/structured/parser/Token;
    .locals 1

    .line 139
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/Token;

    invoke-direct {v0, p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/Token;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    return-object v0
.end method
