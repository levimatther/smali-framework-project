.class final Lcom/google/auto/common/MoreElements$VariableElementVisitor;
.super Lcom/google/auto/common/MoreElements$CastingElementVisitor;
.source "MoreElements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auto/common/MoreElements;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VariableElementVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/auto/common/MoreElements$CastingElementVisitor<",
        "Ljavax/lang/model/element/VariableElement;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/auto/common/MoreElements$VariableElementVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/google/auto/common/MoreElements$VariableElementVisitor;

    invoke-direct {v0}, Lcom/google/auto/common/MoreElements$VariableElementVisitor;-><init>()V

    sput-object v0, Lcom/google/auto/common/MoreElements$VariableElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$VariableElementVisitor;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "variable element"

    .line 135
    invoke-direct {p0, v0}, Lcom/google/auto/common/MoreElements$CastingElementVisitor;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Lcom/google/auto/common/MoreElements$VariableElementVisitor;
    .locals 1

    .line 131
    sget-object v0, Lcom/google/auto/common/MoreElements$VariableElementVisitor;->INSTANCE:Lcom/google/auto/common/MoreElements$VariableElementVisitor;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/google/auto/common/MoreElements$VariableElementVisitor;->visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljavax/lang/model/element/VariableElement;

    move-result-object p1

    return-object p1
.end method

.method public visitVariable(Ljavax/lang/model/element/VariableElement;Ljava/lang/Void;)Ljavax/lang/model/element/VariableElement;
    .locals 0

    return-object p1
.end method
