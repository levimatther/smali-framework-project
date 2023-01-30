.class public final enum Lcom/tcl/netlibrary/entity/SortTypeEnum;
.super Ljava/lang/Enum;
.source "SortTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/entity/SortTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/entity/SortTypeEnum;

.field public static final enum Attribute:Lcom/tcl/netlibrary/entity/SortTypeEnum;

.field public static final enum Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;

    const-string v1, "Date"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/entity/SortTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 4
    new-instance v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;

    const-string v1, "Attribute"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/entity/SortTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tcl/netlibrary/entity/SortTypeEnum;

    .line 5
    sget-object v4, Lcom/tcl/netlibrary/entity/SortTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SortTypeEnum;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tcl/netlibrary/entity/SortTypeEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SortTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/entity/SortTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/entity/SortTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/entity/SortTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/entity/SortTypeEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SortTypeEnum;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/entity/SortTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/entity/SortTypeEnum;

    return-object v0
.end method
