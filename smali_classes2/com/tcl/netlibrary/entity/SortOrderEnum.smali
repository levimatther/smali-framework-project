.class public final enum Lcom/tcl/netlibrary/entity/SortOrderEnum;
.super Ljava/lang/Enum;
.source "SortOrderEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/entity/SortOrderEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/entity/SortOrderEnum;

.field public static final enum Ascending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

.field public static final enum Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;

    const-string v1, "Ascending"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/entity/SortOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Ascending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 3
    new-instance v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;

    const-string v1, "Descending"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/entity/SortOrderEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Descending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/tcl/netlibrary/entity/SortOrderEnum;

    .line 4
    sget-object v4, Lcom/tcl/netlibrary/entity/SortOrderEnum;->Ascending:Lcom/tcl/netlibrary/entity/SortOrderEnum;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/tcl/netlibrary/entity/SortOrderEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SortOrderEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/entity/SortOrderEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/entity/SortOrderEnum;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/entity/SortOrderEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/entity/SortOrderEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SortOrderEnum;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/entity/SortOrderEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/entity/SortOrderEnum;

    return-object v0
.end method
