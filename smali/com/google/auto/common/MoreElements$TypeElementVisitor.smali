.class final Lcom/google/auto/common/MoreElements$TypeElementVisitor;
.super Lcom/google/auto/common/MoreElements$CastingElementVisitor;
.source "MoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TypeElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreElements$CastingElementVisitor<",
        "Ljavax/lang/model/element/TypeElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreElements$TypeElementVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Lcom/google/auto/common/MoreElements$TypeElementVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreElements$TypeElementVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreElements$TypeElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$TypeElementVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "type element"

    .line 97
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreElements$CastingElementVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Lcom/google/auto/common/MoreElements$TypeElementVisitor;
    .locals 1

    .line 93
    sget-object v0, Lcom/google/auto/common/MoreElements$TypeElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$TypeElementVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 93
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreElements$TypeElementVisitor;->visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;

    move-result-object p1

    return-object p1
.end method

.method public visitType(Ljavax/lang/model/element/TypeElement;Ljava/lang/Void;)Ljavax/lang/model/element/TypeElement;
    .locals 0

    return-object p1
.end method
