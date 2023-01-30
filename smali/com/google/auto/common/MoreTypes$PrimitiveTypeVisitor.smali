.class final Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;
.super Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrimitiveTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/PrimitiveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 717
    new-instance v0, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "primitive type"

    .line 720
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700()Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;
    .locals 1

    .line 716
    sget-object v0, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 716
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$PrimitiveTypeVisitor;->visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljavax/lang/model/type/PrimitiveType;

    move-result-object p1

    return-object p1
.end method

.method public visitPrimitive(Ljavax/lang/model/type/PrimitiveType;Ljava/lang/Void;)Ljavax/lang/model/type/PrimitiveType;
    .locals 0

    return-object p1
.end method
