.class final Lcom/google/auto/common/MoreTypes$TypeEquivalence;
.super Lcom/google/common/base/Equivalence;
.source "MoreTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeEquivalence"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/base/Equivalence<",
        "Ljavax/lang/model/type/TypeMirror;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreTypes$TypeEquivalence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Lcom/google/auto/common/MoreTypes$TypeEquivalence;

    invoke-direct {v0}, Lcom/google/auto/common/MoreTypes$TypeEquivalence;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreTypes$TypeEquivalence;->INSTANCE:Lcom/google/auto/common/MoreTypes$TypeEquivalence;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/google/auto/common/MoreTypes$TypeEquivalence;
    .locals 1

    .line 69
    sget-object v0, Lcom/google/auto/common/MoreTypes$TypeEquivalence;->INSTANCE:Lcom/google/auto/common/MoreTypes$TypeEquivalence;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 69
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    check-cast p2, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreTypes$TypeEquivalence;->doEquivalent(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result p1

    return p1
.end method

.method protected doEquivalent(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z
    .locals 1

    .line 74
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/google/auto/common/MoreTypes;->access$000(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic doHash(Ljava/lang/Object;)I
    .locals 0

    .line 69
    check-cast p1, Ljavax/lang/model/type/TypeMirror;

    invoke-virtual {p0, p1}, Lcom/google/auto/common/MoreTypes$TypeEquivalence;->doHash(Ljavax/lang/model/type/TypeMirror;)I

    move-result p1

    return p1
.end method

.method protected doHash(Ljavax/lang/model/type/TypeMirror;)I
    .locals 1

    .line 79
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/auto/common/MoreTypes;->access$100(Ljavax/lang/model/type/TypeMirror;Ljava/util/Set;)I

    move-result p1

    return p1
.end method
