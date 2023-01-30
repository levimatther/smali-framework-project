.class public final enum Lcom/squareup/javawriter/JavaWriter$Scope;
.super Ljava/lang/Enum;
.source "JavaWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/javawriter/JavaWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/javawriter/JavaWriter$Scope;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

.field public static final enum TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "TYPE_DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 2
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ABSTRACT_METHOD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 3
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "NON_ABSTRACT_METHOD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 4
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "CONTROL_FLOW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 5
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ATTRIBUTE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 6
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "ANNOTATION_ARRAY_VALUE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 7
    new-instance v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    const-string v1, "INITIALIZER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/squareup/javawriter/JavaWriter$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->INITIALIZER:Lcom/squareup/javawriter/JavaWriter$Scope;

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/squareup/javawriter/JavaWriter$Scope;

    .line 8
    sget-object v9, Lcom/squareup/javawriter/JavaWriter$Scope;->TYPE_DECLARATION:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v9, v1, v2

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->NON_ABSTRACT_METHOD:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->CONTROL_FLOW:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v1, v5

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ATTRIBUTE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v1, v6

    sget-object v2, Lcom/squareup/javawriter/JavaWriter$Scope;->ANNOTATION_ARRAY_VALUE:Lcom/squareup/javawriter/JavaWriter$Scope;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 1
    const-class v0, Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object p0
.end method

.method public static values()[Lcom/squareup/javawriter/JavaWriter$Scope;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/javawriter/JavaWriter$Scope;->$VALUES:[Lcom/squareup/javawriter/JavaWriter$Scope;

    invoke-virtual {v0}, [Lcom/squareup/javawriter/JavaWriter$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/javawriter/JavaWriter$Scope;

    return-object v0
.end method
