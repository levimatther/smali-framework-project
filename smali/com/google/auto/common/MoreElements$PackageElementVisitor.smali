.class final Lcom/google/auto/common/MoreElements$PackageElementVisitor;
.super Lcom/google/auto/common/MoreElements$CastingElementVisitor;
.source "MoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PackageElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreElements$CastingElementVisitor<",
        "Ljavax/lang/model/element/PackageElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreElements$PackageElementVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lcom/google/auto/common/MoreElements$PackageElementVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreElements$PackageElementVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreElements$PackageElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$PackageElementVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string v0, "package element"

    .line 71
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreElements$CastingElementVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/auto/common/MoreElements$PackageElementVisitor;
    .locals 1

    .line 67
    sget-object v0, Lcom/google/auto/common/MoreElements$PackageElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$PackageElementVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreElements$PackageElementVisitor;->visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/PackageElement;

    move-result-object p1

    return-object p1
.end method

.method public visitPackage(Ljavax/lang/model/element/PackageElement;Ljava/lang/Void;)Ljavax/lang/model/element/PackageElement;
    .locals 0

    return-object p1
.end method
