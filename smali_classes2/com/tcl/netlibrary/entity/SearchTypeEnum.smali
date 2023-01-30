.class public final enum Lcom/tcl/netlibrary/entity/SearchTypeEnum;
.super Ljava/lang/Enum;
.source "SearchTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tcl/netlibrary/entity/SearchTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum AllTextAttributes:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum CreatedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum Date:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum FileName:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum Flag:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum ModifiedDate:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum PresetSearch:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum PurgedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum VanishedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

.field public static final enum WholeWord:Lcom/tcl/netlibrary/entity/SearchTypeEnum;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "Date"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 6
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "Attribute"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 11
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "AllTextAttributes"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->AllTextAttributes:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 14
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "Flag"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Flag:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 18
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "WholeWord"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->WholeWord:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 21
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "VanishedObjects"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->VanishedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 25
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "CreatedObjects"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->CreatedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 29
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "PresetSearch"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->PresetSearch:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 34
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "FileName"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->FileName:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 39
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "ModifiedDate"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->ModifiedDate:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 44
    new-instance v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const-string v1, "PurgedObjects"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/tcl/netlibrary/entity/SearchTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->PurgedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    const/16 v1, 0xb

    new-array v1, v1, [Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    .line 45
    sget-object v13, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Date:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v13, v1, v2

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Attribute:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->AllTextAttributes:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->Flag:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->WholeWord:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->VanishedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v7

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->CreatedObjects:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v8

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->PresetSearch:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v9

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->FileName:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v10

    sget-object v2, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->ModifiedDate:Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    aput-object v2, v1, v11

    aput-object v0, v1, v12

    sput-object v1, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SearchTypeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/tcl/netlibrary/entity/SearchTypeEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    return-object p0
.end method

.method public static values()[Lcom/tcl/netlibrary/entity/SearchTypeEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/tcl/netlibrary/entity/SearchTypeEnum;->$VALUES:[Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    invoke-virtual {v0}, [Lcom/tcl/netlibrary/entity/SearchTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tcl/netlibrary/entity/SearchTypeEnum;

    return-object v0
.end method
