.class final Lcom/google/auto/common/MoreTypes$NoTypeVisitor;
.super Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/NoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$NoTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 675
    new-instance v0, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$NoTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "non-type"

    .line 678
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/google/auto/common/MoreTypes$NoTypeVisitor;
    .locals 1

    .line 674
    sget-object v0, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$NoTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 674
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$NoTypeVisitor;->visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljavax/lang/model/type/NoType;

    move-result-object p1

    return-object p1
.end method

.method public visitNoType(Ljavax/lang/model/type/NoType;Ljava/lang/Void;)Ljavax/lang/model/type/NoType;
    .locals 0

    return-object p1
.end method
