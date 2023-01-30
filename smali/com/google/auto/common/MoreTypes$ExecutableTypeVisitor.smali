.class final Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;
.super Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExecutableTypeVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreTypes$CastingTypeVisitor<",
        "Ljavax/lang/model/type/ExecutableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 654
    new-instance v0, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "executable type"

    .line 657
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreTypes$CastingTypeVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;
    .locals 1

    .line 653
    sget-object v0, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;->INSTANCE:Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 653
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$ExecutableTypeVisitor;->visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Void;)Ljavax/lang/model/type/ExecutableType;

    move-result-object p1

    return-object p1
.end method

.method public visitExecutable(Ljavax/lang/model/type/ExecutableType;Ljava/lang/Void;)Ljavax/lang/model/type/ExecutableType;
    .locals 0

    return-object p1
.end method
