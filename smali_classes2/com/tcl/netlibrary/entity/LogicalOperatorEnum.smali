.class public final enum Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;
.super Ljava/lang/Enum;
.source "LogicalOperatorEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

.field public static final enum And:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

.field public static final enum Not:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

.field public static final enum Or:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    const-string v1, "And"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->And:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    .line 2
    new-instance v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    const-string v1, "Or"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->Or:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    .line 7
    new-instance v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    const-string v1, "Not"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->Not:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    .line 8
    sget-object v5, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->And:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->Or:Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/entity/LogicalOperatorEnum;

    return-object v0
.end method
