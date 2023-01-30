.class final Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;
.super Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ArrayTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/ArrayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 591
    new-instance v0, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "primitive array"

    .line 594
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;
    .locals 1

    .line 590
    sget-object v0, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 590
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$ArrayTypeVisitor;->visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/ArrayType;

    move-result-object p1

    return-object p1
.end method

.method public visitArray(Ljavax/lang/model/type/ArrayType;Ljava/lang/Void;)Ljavax/lang/model/type/ArrayType;
    .locals 0

    return-object p1
.end method
